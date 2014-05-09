module.exports = (grunt) ->

	grunt.initConfig

		htmlmin:
			options:
				removeComments: true
				collapseWhitespace: true
				collapseBooleanAttributes: true
			app:
				files:
					'index.html': 'src/index.html'

  grunt.registerTask 'default', ['htmlmin']

  grunt.loadNpmTasks 'grunt-contrib-htmlmin'
