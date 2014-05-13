module.exports = (grunt) ->

  grunt.initConfig

    copy:
      bootstrap:
        src: 'bower_components/bootstrap/fonts/**'
        dest: 'fonts'
        expand: true
        flatten: true
        filter: 'isFile'
    
    less:
      bootstrap:
        options:
          paths: 'bower_components/bootstrap/less'
        files: '_tmp/bootstrap.css': '_less/bootstrap.less'

    cssmin:
      combine:
        options:
          keepSpecialComments: 0
        files:
          'lib/the.css': [
            '_tmp/bootstrap.css'
          ]

    htmlmin:
      options:
        removeComments: true
        collapseWhitespace: true
        collapseBooleanAttributes: true
      pages:
        files:
          'index.html': [
            '_pages/*.html'
          ]

  grunt.registerTask 'default', ['copy', 'less', 'cssmin', 'htmlmin']

  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-htmlmin'
