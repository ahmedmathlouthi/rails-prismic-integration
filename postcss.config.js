module.exports = {
  plugins: [
    require('tailwindcss')('./app/javascript/styles/tailwind.config.js'),
    require('postcss-import'),
    require('autoprefixer'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}