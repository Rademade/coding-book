#plugins requires
gulp          = require('gulp')
watch         = require('gulp-watch')
livereload    = require('gulp-livereload')

path = require './path.coffee'

gulp.task 'watch', ->
  gulp.watch path.inputDir + 'templates/**/*.jade', ['jade:angular']
  gulp.watch path.inputDir + 'images/**/*.*', ['img']
  gulp.watch path.inputDir + 'images/ico/**/*.*', ['sprites']
  gulp.watch path.inputDir + 'sass/**/*.sass', ['sass']
  gulp.watch path.inputDir + 'js/**/*.*', [ 'js' ]
  gulp.watch path.inputDir + 'js/**/*.*', [ 'coffee' ]
  livereload.listen()
