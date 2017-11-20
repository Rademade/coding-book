#plugins requires
gulp            = require('gulp')
sass            = require('gulp-sass')
livereload      = require('gulp-livereload')
autoprefixer    = require('gulp-autoprefixer')
notify          = require('gulp-notify')
cssmin          = require('gulp-cssmin')

#path requires
path = require './path.coffee'

#functions requires
err = sass.logError

buildSass = (taskName,outputDir,minify) ->
  gulp.task taskName, ->
    pipe = gulp.src(path.inputDir + 'sass/manifest.sass')
    .pipe sass(
      indentedSyntax: true
      cache: false
    )
    .pipe autoprefixer(
      browsers: ['> 0%']
    )
    pipe = pipe.pipe(cssmin()) unless minify
    pipe
    .pipe gulp.dest(outputDir + '/css')
    .pipe livereload()
    pipe

buildSass('sass', path.outputDir, true)
buildSass('sass:production', path.outputDir, false)


gulp.task 'sass:critical', ->
  gulp.src(path.inputDir + 'sass/critical-sass/*.sass')
  .pipe sass(
    indentedSyntax: true
    errLogToConsole: true
    cache: false
  )
  .pipe autoprefixer(
    browsers: ['> 0%']
  )
  .pipe(cssmin())
  .pipe gulp.dest(path.inputDir + 'templates/critical-css/')