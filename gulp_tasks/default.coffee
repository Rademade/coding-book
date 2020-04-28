#plugins requires
gulp = require('gulp')
rimraf = require('rimraf')

path = require './path.coffee'

gulp.task 'clean', (cb) ->
  return rimraf path.outputDir, cb

gulp.task 'default', gulp.series(
  'clean'
  'sass'
  'sass:critical'
  'jade'
  'jade:angular'
  gulp.parallel(
    'sprites'
    'fonts:js'
    'fonts:css'
    'img'
    'watch'
    'connect'
    'js'
    'coffee'
  )
)

gulp.task 'build:production', gulp.series(
  'clean'
  'jade'
  'jade:angular'
  'sass:critical'
  'sass:production'
  'sprites'
  'fonts:js'
  'fonts:css'
  'img'
  'js'
  'coffee'
)
