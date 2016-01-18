#plugins requires
gulp            = require('gulp')
sass            = require('gulp-sass')
livereload      = require('gulp-livereload')
autoprefixer    = require('gulp-autoprefixer')
notify          = require("gulp-notify")
minifyCss       = require('gulp-minify-css')

path = require './path.coffee'

gulp.task 'sass', ->
  gulp.src(path.inputDir + 'sass/manifest.sass')
    .pipe sass(
      indentedSyntax: true
      cache: false
      errLogToConsole: true
    )
    .on('error', sass.logError)
    .pipe autoprefixer(
      browsers: ['> 0%']
    )
    .pipe(minifyCss({advanced: false}))
    .pipe gulp.dest(path.outputDir + 'css')
    .pipe livereload()