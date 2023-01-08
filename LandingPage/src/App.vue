<template>
  <v-app>
    <v-main>
      <HeroPage v-intersect="intersect(MENU_ITEM.HOME)" />
      <div class="main">
        <IntroPage />
        <AboutPage v-intersect="intersect(MENU_ITEM.ABOUT)" />
        <CharactersPage v-intersect="intersect(MENU_ITEM.CHARACTERS)" />
        <TeamPage v-intersect="intersect(MENU_ITEM.TEAM)" />
      </div>
    </v-main>
    <NavMenu :active-section="intersectedSection" v-if="smAndUp" />
    <MobileNavMenu :active-section="intersectedSection" v-else />
    <AppFooter />
    <AppLoader />
  </v-app>
</template>

<script setup lang="ts">
import { useDisplay } from "vuetify";

import NavMenu from "@/components/menu/NavMenu.vue";
import MobileNavMenu from "@/components/menu/MobileNavMenu.vue";
import HeroPage from "@/features/HeroPage.vue";
import AboutPage from "@/features/AboutPage.vue";
import CharactersPage from "@/features/CharactersPage.vue";
import AppFooter from "@/components/AppFooter.vue";
import IntroPage from "@/features/IntroPage.vue";
import TeamPage from "@/features/TeamPage.vue";
import AppLoader from "@/components/AppLoader.vue";
import { MENU_ITEM } from "@/components/menu/links.config";
import { useIntersect } from "@/utils/intersect.composable";

const { smAndUp } = useDisplay();
const { intersect, intersectedSection } = useIntersect();
</script>

<style>
html,
body,
h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "Alexandria", serif;
  font-weight: 300;
}

html,
body {
  font-size: 14px;
}

a {
  color: #96c3ea;
  text-decoration: none;
}

.main {
  background: linear-gradient(
    180deg,
    #00000b 0%,
    #232337 31.25%,
    #3d394e 73.44%,
    #4c455c 100%
  );
}
</style>
