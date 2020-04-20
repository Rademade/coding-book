#plugins requires
gulp          = require('gulp')
livereload    = require('gulp-livereload')

path = require './path.coffee'

gulp.task 'watch', ->
  gulp.watch path.inputDir + 'templates/**/*.jade', gulp.series 'jade:angular'
  gulp.watch path.inputDir + 'templates/**/*.jade', gulp.series 'jade'
  gulp.watch path.inputDir + 'images/**/*.*', gulp.series 'img'
  gulp.watch path.inputDir + 'images/ico/**/*.*', gulp.series 'sprites'
  gulp.watch path.inputDir + 'sass/**/*.sass', gulp.series 'sass'
  gulp.watch path.inputDir + 'js/**/*.*', gulp.series 'js'
  gulp.watch path.inputDir + 'js/**/*.*', gulp.series 'coffee'
  livereload.listen()
