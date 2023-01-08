// Plugins
import VueMacros from "unplugin-vue-macros/vite";
import vue from "@vitejs/plugin-vue";
import vuetify from "vite-plugin-vuetify";
import eslintPlugin from "vite-plugin-eslint";
import webfontDownload from "vite-plugin-webfont-dl";
import svgLoader from "vite-svg-loader";

// Utilities
import { defineConfig } from "vite";
import { fileURLToPath, URL } from "node:url";

export default defineConfig({
  base: "./",
  plugins: [
    VueMacros({
      plugins: {
        vue: vue(),
      },
    }),
    svgLoader(),
    vuetify({
      autoImport: true,
    }),
    webfontDownload(),
    eslintPlugin(),
  ],
  define: { "process.env": {} },
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
    extensions: [".js", ".json", ".jsx", ".mjs", ".ts", ".tsx", ".vue"],
  },
  server: {
    port: 3000,
  },
});
