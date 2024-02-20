import { defineConfig } from 'astro/config';

import preact from "@astrojs/preact";

// https://astro.build/config
export default defineConfig({
  site: "https://dashing-fairy-5c91b9.netlify.app",
  integrations: [preact()]
});