const ghLink = import.meta.env.VITE_APP_GH_LINK;

export enum MENU_ITEM {
  HOME = "home",
  ABOUT = "about",
  CHARACTERS = "characters",
  TEAM = "team",
}

export interface INavLink {
  id: MENU_ITEM;
  content: string;
}

type TSocial = "facebook" | "instagram" | "github" | "discord" | "mastodon";

export interface ISocialLink {
  id: TSocial;
  link?: string;
}

export const linksConfig: INavLink[] = [
  {
    id: MENU_ITEM.ABOUT,
    content: "MENU.ABOUT",
  },
  {
    id: MENU_ITEM.CHARACTERS,
    content: "MENU.CHARACTERS",
  },
  {
    id: MENU_ITEM.TEAM,
    content: "MENU.TEAM",
  },
];

export const socialLinksConfig: ISocialLink[] = [
  {
    id: "facebook",
  },
  {
    id: "instagram",
  },
  {
    id: "github",
    link: ghLink,
  },
  {
    id: "discord",
  },
  {
    id: "mastodon",
  },
];
