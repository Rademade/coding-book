#plugins requires
gulp          = require('gulp')
livereload    = require('gulp-livereload')


path = require './path.coffee'

gulp.task 'fonts', ->
  gulp.src(path.inputDir + 'fonts/**/*.*')
  .pipe gulp.dest(path.outputDir + 'fonts/')
  .pipe livereload()