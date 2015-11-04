#plugins requires

gulp            = require('gulp')
svgSprite       = require('gulp-svg-sprite')

path = require './path.coffee'

config = mode:
  css:
    dest: 'src/'
    spacing: padding: 5
    layout: 'diagonal'
    sprite: '../images/sprite.svg'
    bust: false
    render: scss:
      dest: '../sass/mixins/_sprites.scss'

gulp.task 'sprites', ->
  gulp.src(path.inputDir + 'images/ico/*.svg')
  .pipe(svgSprite(config))
  .pipe(gulp.dest(path.inputDir))