#plugins requires
gulp            = require('gulp')
svgSprite       = require('gulp-svg-sprite')
svg2png         = require('gulp-svg2png')

#path requires
path = require './path.coffee'

config =
  shape:
    spacing:
      padding: 1
      box: 'content'

  mode:
    css:
      dest: '../../build/'
      sprite: 'images/sprite.svg'
      bust: false
      render:
        scss:
          dest: '../src/sass/base/mixins/sprites.scss'
          template: 'src/sass/base/mixins/template.scss'

gulp.task 'sprites', ->
  return gulp.src(path.inputDir + '/images/ico/*.svg')

  .pipe(svgSprite(config))
  .pipe(gulp.dest(path.outputDir + 'images/'))
  
gulp.task 'sprites:png', ->
  gulp.src(path.outputDir + '/images/sprite.svg')
  .pipe(svg2png())
  .pipe(gulp.dest(path.outputDir + 'images/'))
