import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  site: 'https://r-kez.github.io',
  base: '/k_tools_slm_documentation/',
  integrations: [tailwind()]
});
