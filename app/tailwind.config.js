/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./pages/**/*.{js,ts,jsx,tsx}', './components/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        primary: '#0000B4',
        secondary: '#FF0101',
        content: '#525252',
        gray: {
          100: '#4D4D4D',
          200: '#484848',
        },
        ocean: {
          100: '#007EFF',
        },
      },
      fontFamily: {
        roboto: ['Roboto', 'sans-serif'],
        rubik: ['Rubik', 'sans-serif'],
        dmsans: ['DM Sans', 'sans-serif'],
        mulish: ["Mulish"],
        jost: ["Jost"],
      },
      screens: {
        phone: '414px',
        tablet: '768px',
        tabletlg: '960px',
        tabletxl: '1024px',
        laptop: '1200px',
        laptoplg: '1400px',
        desktop: '1700px',
      },
    },
  },
  plugins: [],
}
