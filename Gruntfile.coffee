# # grunt-docco
module.exports = (grunt) ->

  grunt.initConfig

    docco:

      # ## use current sane defaults
      options:
        layout : "parallel"
        output : "docs/"
        timeout : 500

      # ## parse multiple files
      all:
        files:
          src: ['test/fixtures/*.coffee']

      # ## parse a single file
      single: ['test/fixtures/valid.litcoffee']

      # ## parse this file with linear output
      gruntfile:
        options:
          layout: "linear"
        files:
          src: 'Gruntfile.coffee'

      # ## nothing to parse
      empty: '404.coffee'

  # ## Load local tasks.
  grunt.loadTasks 'tasks'

  # ## Default task.
  grunt.registerTask 'default', 'docco'

  # ## Test task.
  grunt.registerTask 'test', 'docco'
