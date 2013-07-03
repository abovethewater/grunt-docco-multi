#
# grunt-docco-multi
# https://abovethewater.github.io/grunt-docc-multi
#
# Copyright (&copy;) 2013 Joe Mathews (abovethewater)
# Licensed under the [MIT](http://abovethewater.mit-license.org) licence
#

# # grunt-docco-multi
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
      single:
        files:
          src: ['test/fixtures/valid.litcoffee']

      # ## parse this file with linear output
      gruntfile:
        options:
          layout: "linear"
        files:
          src: 'Gruntfile.coffee'

      # ## parse everything with classic output
      # ## parse multiple files
      mulitplelinear:
        options:
          layout: "classic"
        files:
          src: ['test/fixtures/multiple//*.coffee']

      # ## nothing to parse
      empty: '404.coffee'

  # ## Load local tasks.
  grunt.loadTasks 'tasks'

  # ## Default task.
  grunt.registerTask 'default', 'docco'

  # ## Test task.
  grunt.registerTask 'test', 'docco'
