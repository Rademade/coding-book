#plugins requires
gulp                = require('gulp')
jade                = require('gulp-jade')
changed             = require('gulp-changed')
jadeInheritance     = require('gulp-jade-inheritance')
livereload          = require('gulp-livereload')
notify              = require("gulp-notify")
templateCache       = require("gulp-angular-templatecache")
path                = require './path.coffee'
handleErrors        = require './util/handleErrors.coffee'


gulp.task 'jade', ->
  return gulp
    .src(path.inputDir + 'templates/*.jade')
      .pipe jade().on 'error', handleErrors
      .pipe gulp.dest(path.outputDir)

gulp.task 'jade:angular', ->
  return gulp
    .src([path.inputDir + "templates/**/*.jade"])
      .pipe changed(path.outputDir, extension: '.html')
      .pipe(jade())
      .pipe(templateCache(
        module: "app"
      ))
      .pipe(gulp.dest(path.outputDir + "js"))
      .pipe livereload()
