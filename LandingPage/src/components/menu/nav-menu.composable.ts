import { Ref, ref, watch } from "vue";
import { MENU_ITEM } from "@/components/menu/links.config";

export type INavMenuProps = {
  activeSection?: string;
};

export interface INavMenuReturns {
  activeSection: Ref<MENU_ITEM | undefined>;
  setActiveSection: (section: string) => void;
}

export const useNavMenu = (props: INavMenuProps): INavMenuReturns => {
  const activeSection = ref();

  const setActiveSection = (section: string) => (activeSection.value = section);

  watch(
    () => props.activeSection,
    async (newSection) => {
      if (newSection) {
        activeSection.value = newSection;
      }
    }
  );

  return {
    activeSection,
    setActiveSection,
  };
};
