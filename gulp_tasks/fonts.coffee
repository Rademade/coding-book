#plugins requires
gulp          = require('gulp')
livereload    = require('gulp-livereload')


path = require './path.coffee'

gulp.task 'fonts:js', ->
  gulp.src(path.inputDir + 'fonts/**/*.js')
  .pipe gulp.dest(path.outputDir + 'js/')
  .pipe livereload()

gulp.task 'fonts:css', ->
  gulp.src(path.inputDir + 'fonts/**/*.css')
  .pipe gulp.dest(path.outputDir + 'css/')
  .pipe livereload()