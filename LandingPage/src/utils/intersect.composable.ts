import { Ref, ref } from "vue";
import { MENU_ITEM } from "@/components/menu/links.config";

interface IIntersectReturns {
  intersect: (name: MENU_ITEM) => void;
  intersectedSection: Ref<MENU_ITEM | undefined>;
}

export const useIntersect = (): IIntersectReturns => {
  const intersectedSection = ref<MENU_ITEM | undefined>();

  const intersect = (name: MENU_ITEM) => ({
    handler: onIntersect(name),
    options: {
      threshold: [0.1],
    },
  });

  const onIntersect = (name: MENU_ITEM) => (isIntersecting: boolean) => {
    if (isIntersecting) {
      intersectedSection.value = name;
    }
  };

  return {
    intersect,
    intersectedSection,
  };
};
