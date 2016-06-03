#plugins requires
gulp          = require('gulp')
coffee        = require('gulp-coffee')
concat        = require('gulp-concat')
minify        = require('gulp-minify')
livereload    = require('gulp-livereload')

path = require './path.coffee'

gulp.task 'js', ->
  gulp.src([
    path.inputDir + '../bower_components/angular/angular.js',
    path.inputDir + '../bower_components/angular-ui-router/release/angular-ui-router.js',
    path.inputDir + '../bower_components/particles.js/particles.js',
    path.inputDir + '../bower_components/particles.js/analytic.js',
  ])
    .pipe concat('main.js')
    .pipe(minify())
    .pipe gulp.dest(path.outputDir + 'js')

gulp.task 'coffee', ->
  gulp.src([
    path.inputDir + 'js/app.coffee'
    path.inputDir + 'js/router.coffee'
    path.inputDir + 'js/controllers/**/*.coffee'
  ])
    .pipe coffee({bare: true})
    .pipe concat('common.js')
    .pipe(minify())
    .pipe gulp.dest(path.outputDir + 'js')

gulp.task 'js:concat',['js','coffee'], ->
  gulp.src([
    path.outputDir + 'js/main.js',
    path.outputDir + 'js/common.js',
    path.outputDir + 'js/templates.js'
  ])
    .pipe concat('app.js')
    .pipe(minify())
    .pipe gulp.dest(path.outputDir + 'js')
