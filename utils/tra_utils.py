from pathlib import Path
import re
from typing import TextIO, Sequence, Mapping, Set, Tuple, List, Optional, Union, Type, TypeVar


Self = TypeVar('Self')

class WeiduFile:
    name: str
    path: Path
    io: TextIO

    subroots: Set[str] = {
        'audio',
        'areas',
        'creatures',
        'dialogues',
        'epilogues',
        'items',
        'lib',
        'scripts',
        'spells',
        'translations',
    }

    @classmethod
    def from_path(cls: Type[Self], path: Union[str, Path]) -> Self:
        if not isinstance(path, Path):
            path = Path(path)

        name = path.name
        path = path.resolve()

        root_path = path.parent
        while root_path.name != '.':
            prev_root_path = root_path
            root_path = root_path.parent
            if prev_root_path.name in cls.subroots:
                break

        io = open(path, 'r')
        dfile = cls(io, root_path=root_path, name=name)
        return dfile

    def __init__(self, io: TextIO, root_path: Path, name: Optional[str] = None):
        if name is None:
            if hasattr(io, 'name'):
                name = io.name
            else:
                raise RuntimeError("Provided an unnamed IO with no name!")

        self.name = name
        self.root_path = root_path
        self.io = io

    def __enter__(self):
        self.io = self.io.__enter__()
        return self

    def __exit__(self, *args, **kwargs):
        return self.io.__exit__(*args, **kwargs)

def _find_content(line: str, in_comment: bool, *, buf: Optional[List[str]] = None) -> Tuple[str, bool]:
    if buf is None:
        buf = []

    if in_comment:
        comment_idx = line.find('*/')
        if comment_idx == -1:
            return ''.join(buf), in_comment
        line = line[comment_idx+2:]
        in_comment = False

    line_comment_idx = line.find('//')
    block_comment_idx = line.find('/*')

    # if both, take the first one
    if line_comment_idx != -1:
        if block_comment_idx == -1 or line_comment_idx < block_comment_idx:
            # line-comment comes first - return what is left
            buf.append(line[:line_comment_idx])
            return ''.join(buf), in_comment

    if block_comment_idx != -1:
        buf.append(line[:block_comment_idx])
        return _find_content(line[block_comment_idx+2:], True, buf=buf)

    buf.append(line)
    return ''.join(buf), in_comment


class DFile(WeiduFile):
    def gather_string_identifiers(self) -> Sequence[str]:
        pat = re.compile('@[0-9]*')
        all_idents = set()
        in_comment = False
        for line in self.io:
            content, in_comment = _find_content(line, in_comment)
            idents = pat.findall(content)
            all_idents |= set(idents)
        all_idents_seq = list(all_idents)
        all_idents_seq.sort()
        return all_idents_seq

    def get_tra_file_paths(self) -> Sequence[Path]:
        root_path = self.root_path
        tra_dir = root_path / 'translations'
        if not tra_dir.exists():
            raise RuntimeError(f"Translation directory doesn't exist for file: '{self.name}' at root '{self.root_path}'")
        if not tra_dir.is_dir():
            raise RuntimeError(f"'translations' isn't a directory for file: '{self.name}' at root '{self.root_path}'")

        lang_dirs = [child for child in tra_dir.iterdir() if child.is_dir()]
        tra_name = self.name.replace('.d', '.tra')
        tra_files_found = []
        tra_files_missing = []
        for lang_dir in lang_dirs:
            tra_file = lang_dir / tra_name
            if tra_file.exists():
                tra_files_found.append(tra_file)
            else:
                tra_files_missing.append(tra_file)

        if tra_files_missing:
            tra_files_missing_str = [
                f'\n * {fname}' for fname in tra_files_missing
            ]
            raise RuntimeError(f"Missing translation files:{tra_files_missing_str}")

        return tra_files_found

    def check_string_identifiers(self) -> None:
        idents = set(self.gather_string_identifiers())
        tra_files = self.get_tra_file_paths()
        for tra_file_path in tra_files:
            tra_dir = tra_file_path.parent.name
            with TraFile.from_path(tra_file_path) as tra_file:
                ident_strings = tra_file.gather_strings()
            tra_idents = set(ident_strings.keys())
            missing_idents = idents - tra_idents
            if missing_idents:
                missing_files_str = ''.join([
                    f'\n * {ident}' for ident in missing_idents
                ])
                raise RuntimeError(f"Missing identifiers for file '{self.name}' in '{tra_dir}/{tra_file_path.name}': {missing_files_str}")


def _get_whole_string(io: TextIO, line: str) -> str:
    string_parts = []
    where_end = line.find('~')
    if where_end != -1:
        string_parts.append(line[:where_end])
    else:
        string_parts.append(line)
        while True: # do-until
            line = io.readline()
            if line == '':
                break

            where_end = line.find('~')
            if where_end != -1:
                new_part = line[:where_end]
                string_parts.append(new_part)
                break
            else:
                string_parts.append(line)

    string = ''.join(string_parts)
    return string

def _get_ident_string(io: TextIO, line: Optional[str] = None) -> Optional[Tuple[str, str]]:
    pat = re.compile('^(@[0-9]*) = ~')

    if line is None:
        line = io.readline()
    if line == '':
        return None

    match = pat.match(line)
    if not match:
        return None

    ident = match.group(1)
    rest_of_line = line[match.end() :]
    string = _get_whole_string(io, rest_of_line)
    return ident, string

class TraFile(WeiduFile):
    def gather_strings(self) -> Mapping[str, str]:
        all_strings = {}

        while True: # do-until
            line = self.io.readline()
            if line == '':
                break

            ident_string = _get_ident_string(self.io, line)
            if ident_string is None:
                continue
            ident, string = ident_string
            all_strings[ident] = string

        all_strings_seq = list(all_strings.items())
        all_strings_seq.sort()
        all_strings = dict(all_strings_seq)
        return all_strings

