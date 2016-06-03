#plugins requires
gulp = require('gulp')
rimraf = require('rimraf')
gulpsync = require('gulp-sync')(gulp)

path = require './path.coffee'

gulp.task 'clean', (cb) ->
  return rimraf path.outputDir, cb

gulp.task 'default', gulpsync.sync([
  # sync
  'clean',
  [
    # async
    'jade'
    'jade:angular'
    'sass'
    'sprites'
    'fonts:js'
    'fonts:css'
    'img'
    'watch'
    'connect'
  ],
  'js'
  'coffee'
  'js:concat'
])

gulp.task 'build:production', gulpsync.sync([
  # sync
  'clean',
  [
    # async
    'jade'
    'jade:angular'
    'sass'
    'sprites'
    'fonts:js'
    'fonts:css'
    'img'
  ],
  'js'
  'coffee'
  'js:concat'
])
