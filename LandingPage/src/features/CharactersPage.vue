<template>
  <div
    id="characters"
    class="d-flex flex-column align-center justify-center py-10 mx-6"
  >
    <div :class="smAndUp && 'page'">
      <div data-aos="fade-up">
        <h2 class="mt-16 mb-10">
          <SectionTitle>
            <img class="sword" :src="swordPng" />
            {{ $t("CHARACTERS.TITLE") }}
          </SectionTitle>
        </h2>
        <div class="mt-2 mb-10">
          {{ $t("CHARACTERS.INTRO") }}
        </div>
      </div>
      <CharacterDetails
        data-aos="fade-up"
        data-aos-delay="500"
        character-name="SHITHRI"
        layout="left"
      />
      <CharacterDetails
        data-aos-delay="1000"
        data-aos="fade-up"
        character-name="CALY"
        layout="right"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import swordPng from "@/assets/Sword.png";

import { useDisplay } from "vuetify";
import CharacterDetails from "@/components/CharacterDetails.vue";
import SectionTitle from "@/components/SectionTitle.vue";

const { smAndUp } = useDisplay();
</script>

<style scoped>
.page {
  width: 60vw;
}
.sword {
  margin-right: 16px;
  max-height: 2em;
}
</style>
