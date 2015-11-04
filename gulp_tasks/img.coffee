#plugins requires
gulp          = require('gulp')
livereload    = require('gulp-livereload')


path = require './path.coffee'

gulp.task 'img', ->
  gulp.src(path.inputDir + 'images/**/*.*')
  .pipe gulp.dest(path.outputDir + 'images/')
  .pipe livereload()