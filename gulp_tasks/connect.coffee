#plugins requires
gulp        = require('gulp')
modRewrite  = require('connect-modrewrite')
connect     = require('gulp-connect')

path = require './path.coffee'


gulp.task 'connect', ->
  connect.server
    root: [ path.outputDir ]
    port: 3000
    livereload: true
    middleware: -> [
        modRewrite([ '!\\.html|\\.js|\\.svg|\\.css|\\.png|\\.jpg|\\.eot|\\.woff|\\.ttf|\\.\\w+$ /index.html [L]'])
    ]
