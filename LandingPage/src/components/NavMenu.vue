<template>
  <div class="d-flex align-end flex-column pa-6">
    <v-btn
      variant="plain"
      v-for="locale in $i18n.availableLocales"
      :key="`locale-${locale}`"
      @click="changeLocale(locale)"
    >
      {{ locale }}
    </v-btn>
    <v-btn variant="plain"> {{ $t("MENU.ABOUT") }} </v-btn>
    <v-btn variant="plain">{{ $t("MENU.CHARACTERS") }} </v-btn>
    <v-btn variant="plain">{{ $t("MENU.READ_MORE") }} </v-btn>
  </div>
</template>

<script setup lang="ts">
import { i18n } from "@/plugins/i18n";

const changeLocale = (locale: string) =>
  (i18n.global.locale = locale as typeof i18n.global.locale);
</script>

<style scoped></style>