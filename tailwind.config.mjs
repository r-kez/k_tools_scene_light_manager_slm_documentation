/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      },
      colors: {
        zinc: {
          950: '#09090b',
        },
        technical: {
          amber: '#f59e0b',
          orange: '#ea580c',
          yellow: '#fbbf24',
        }
      }
    },
  },
  plugins: [],
}
