<template>
  <div
    v-if="!state.mobileMenuOpen"
    class="h-screen d-flex align-end justify-start flex-column pa-6 mobile-nav-menu"
  >
    <v-btn variant="text" icon="fa:fas fa-bars" @click="openMenu()" />
  </div>
  <div v-else class="h-screen w-100 mobile-nav-menu bg-dark">
    <div
      class="h-screen w-100 menu-background"
      :style="{ backgroundImage: `url(${bgImagePath})` }"
    />
    <div
      class="menu-content h-screen w-100 d-flex flex-column justify-lg-space-between"
    >
      <div class="d-flex align-end justify-start flex-column pa-6">
        <v-btn variant="text" icon="fa:fas fa-times" @click="closeMenu()" />
      </div>

      <div class="menu-buttons d-flex flex-column justify-space-around">
        <v-btn-toggle
          v-model="activeSection"
          class="h-50 d-flex flex-column justify-start align-start px-6 py-sm-8 py-4"
        >
          <v-btn
            class="button pa-2"
            selected-class="active"
            :value="MENU_ITEM.HOME"
            variant="text"
            @click="goToMenu(MENU_ITEM.HOME)"
          >
            {{ $t("MENU.HOME") }}
          </v-btn>

          <v-btn
            v-for="link in linksConfig"
            :key="link.id"
            class="button pa-2"
            selected-class="active"
            :value="link.id"
            variant="text"
            @click="goToMenu(link.id)"
          >
            {{ $t(link.content) }}
          </v-btn>
        </v-btn-toggle>

        <div class="px-8 pb-12">
          <v-btn-toggle v-model="$i18n.locale" rounded="xl" mandatory divided>
            <v-btn
              selected-class="active"
              variant="outlined"
              size="large"
              v-for="locale in $i18n.availableLocales"
              :key="`locale-${locale}`"
              :value="locale"
              @click="changeLocale(locale)"
            >
              {{ locale.split("_")[0] }}
            </v-btn>
          </v-btn-toggle>
        </div>
      </div>
      <div class="menu-footer pa-6">
        <v-divider />
        <div class="social text-center">
          <h3 class="py-4 social-header">{{ $t("FOOTER.SOCIAL") }}:</h3>
          <div>
            <v-btn
              v-for="social in socialLinksConfig"
              :key="social.id"
              variant="text"
              :icon="`fa:fab fa-${social.id}`"
              class="px-2"
              :href="social.link"
              target="_blank"
            />
          </div>
          <img class="logo pa-4" :src="logoImagePath" alt="logo-small" />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { reactive } from "vue";

import bgImagePath from "@/assets/home-bg.svg?url";
import logoImagePath from "@/assets/logo-small.png";
import { linksConfig, socialLinksConfig, MENU_ITEM } from "./links.config";
import { useScrollTo } from "@/utils/scroll-to.composable";
import { i18n } from "@/plugins/i18n";

import { useNavMenu } from "./nav-menu.composable";
import type { INavMenuProps } from "./nav-menu.composable";

const props = defineProps<INavMenuProps>();
const { activeSection, setActiveSection } = useNavMenu(props);

const state = reactive({ mobileMenuOpen: false, langMenu: false });
const { scrollTo } = useScrollTo();

const openMenu = () => (state.mobileMenuOpen = true);
const closeMenu = () => (state.mobileMenuOpen = false);

const goToMenu = (section: string) => {
  setActiveSection(section);
  scrollTo(section);
  closeMenu();
};

const changeLocale = (locale: string) => {
  i18n.global.locale = locale as typeof i18n.global.locale;
};
</script>

<style scoped>
.mobile-nav-menu {
  position: fixed;
  right: 0;
  top: 0;
  z-index: 999;
}
.bg-dark {
  background: #14162a;
  position: fixed;
}
.menu-background {
  position: absolute;
  right: 0;
  top: 0;
  background-size: cover;
  background-position: 60% center;
  background-repeat: no-repeat;
  opacity: 0.1;
}
.menu-content {
  position: relative;
}
.menu-buttons {
  height: 60%;
}
.button {
  font-style: normal;
  font-weight: 700;
  font-size: 32px;
  line-height: 39px;
  text-transform: uppercase;
}

.active {
  color: #f9b24b;
}
.menu-label {
  pointer-events: none;
}
.menu-label-active {
  background-color: transparent;
}
.social-header {
  font-weight: 600;
  font-size: 21px;
  line-height: 26px;
}
</style>
