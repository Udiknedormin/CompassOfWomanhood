<template>
  <v-btn-toggle
    v-model="activeSection"
    class="h-screen d-flex align-end justify-center flex-column pa-6 nav-menu text-right"
  >
    <v-btn
      class="pa-2 button"
      v-for="locale in $i18n.availableLocales"
      :key="`locale-${locale}`"
      :class="$i18n.locale === locale && 'active'"
      variant="plain"
      @click="changeLocale(locale)"
    >
      {{ locale.split("_")[0] }}
    </v-btn>

    <v-btn
      class="button pa-2"
      selected-class="active"
      value="about"
      variant="plain"
      @click="goToMenu('about')"
    >
      {{ $t("MENU.ABOUT") }}
    </v-btn>
    <v-btn
      class="button pa-2"
      selected-class="active"
      variant="plain"
      value="characters"
      @click="goToMenu('characters')"
      >{{ $t("MENU.CHARACTERS") }}
    </v-btn>
    <v-btn
      value="team"
      @click="goToMenu('team')"
      selected-class="active"
      class="button pa-2"
      variant="plain"
    >
      {{ $t("MENU.TEAM") }}
    </v-btn>
    <v-btn variant="text" icon="fa:fab fa-facebook" class="mt-10 pa-2" />
    <v-btn variant="text" icon="fa:fab fa-instagram" class="pa-2" />
    <v-btn
      variant="text"
      icon="fa:fab fa-github"
      class="pa-2"
      :href="ghLink"
      target="_blank"
    />
    <v-btn variant="text" icon="fa:fab fa-discord" class="pa-2" />
    <v-btn variant="text" icon="fa:fab fa-mastodon" class="pa-2" />
  </v-btn-toggle>
</template>

<script setup lang="ts">
import { i18n } from "@/plugins/i18n";
import { useScrollTo } from "@/utils/scroll-to.composable";
import { ref, watch } from "vue";

interface INavMenuProps {
  activeSection?: string;
}

const props = defineProps<INavMenuProps>();
const activeSection = ref();
const emit = defineEmits(["close-mobile-menu"]);

const { scrollTo } = useScrollTo();

const ghLink = import.meta.env.VITE_APP_GH_LINK;

const goToMenu = (section: string) => {
  emit("close-mobile-menu");
  scrollTo(section);
  activeSection.value = section;
};

const changeLocale = (locale: string) => {
  i18n.global.locale = locale as typeof i18n.global.locale;
  emit("close-mobile-menu");
};

watch(
  () => props.activeSection,
  async (newSection) => {
    if (newSection) {
      activeSection.value = newSection;
    }
  }
);
</script>

<style scoped>
.nav-menu {
  position: fixed;
  right: 0;
  width: 200px;
}

.button {
  font-weight: 300;
  display: flex;
  justify-content: end;
  opacity: 1;
}

.button:hover {
  color: #f9b24b;
}

.active {
  font-weight: 500;
  color: #f9b24b;
}
</style>
