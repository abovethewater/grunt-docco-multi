[![build status](https://secure.travis-ci.org/abovethewater/grunt-docco.png)](http://travis-ci.org/abovethewater/grunt-docco)
# grunt-docco

**Grab your markdown comments in your CoffeeScript through [Docco](http://jashkenas.github.io/docco/).**

## Installation

Install npm package, next to your project's Gruntfile:

    npm install --save-dev grunt-docco

Add this line to your project's Gruntfile:

    grunt.loadNpmTasks('grunt-docco');


## Configuration

`docco` is a multitask, so you can use it similary to `lint`, `watch` etc...


  grunt.initConfig

    ...

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

    ...

### Options

Standard `doco` options are supported

    config:
        layout:     'parallel'
        output:     'docs/'
        template:   null
        css:        null
        extension:  null

With an additional parameter for the grunt async timeout

This parameter is a quick and dirty workaround for the lack of a complete callback in docco itself.

    config:
        timeout:    500

licensed under [MIT](http://abovethewater.mit-license.org)
(&copy;) 2013 abovethewater
