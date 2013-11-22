module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON("./package.json")

    stylus: require "./grunt/configs/stylus.coffee"

    watch:
      css:
        files: ['public/**/*.styl'],
        tasks: ['stylus']

    cssmin:
      combine:
        options:
          keepSpecialComments: 0
        files:
          'public/css/app.min.css' : [
            'public/js/components/bootstrap.css/css/bootstrap.css',
            'public/css/main.css'
          ]
    requirejs:
      compile:
        options:
          baseUrl: "./public/js",
          name: "main",
          paths: {
            jquery: 'components/jquery/jquery',
            validator: 'components/jquery.validation/jquery.validate',
            bootstrap: 'components/bootstrap.css/js/bootstrap',
            timepicker: 'components/bootstrap-timepicker/js/bootstrap-timepicker',
            inputmask: 'components/jquery.inputmask/js/jquery.inputmask',
            underscore: "components/underscore/underscore",
            backbone: "components/backbone/backbone",
            marionette: "components/backbone.marionette/lib/backbone.marionette",

            user: 'app/models/users',
            users: 'app/collections/users',
            userRouter: 'app/routers/user_router',
            adminRouter: 'app/routers/admin_router',
            adminLayout: 'app/views/admin_layout',
            userLayout: 'app/views/user_layout',
            navView: 'app/views/nav_view',
            modalView: 'app/views/modal_view',
          },
          shim: {
            bootstrap: {
              deps: ['jquery']
            },
            timepicker: {
              deps: ["jquery"]
            },
            validator: {
              deps: ['jquery']
            },
            backbone: {
              deps: ["underscore", "jquery"],
              exports: "Backbone"
            },
            marionette: {
              deps: ["underscore", "backbone", "jquery"],
              exports: "Marionette"
            },
            getCarView: {
              deps: ['validator']
            }
          },
          stubModules: ['cs', 'coffee-script'],
          out: "./public/js/main-built.js",

  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-requirejs'

  grunt.registerTask "nodemon", "Run nodemon", ()->
    grunt.util.spawn cmd: "nodemon", args: ["app.coffee"], opts: {stdio: 'inherit'}

  grunt.registerTask 'prod', 'Prepare for production', () ->
    grunt.task.run ['requirejs', 'stylus', 'cssmin', 'nodemon']

  grunt.registerTask 'default', 'Run application', () ->
    grunt.task.run ["nodemon", 'stylus', 'watch']
