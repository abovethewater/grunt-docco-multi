[![build status](https://secure.travis-ci.org/abovethewater/grunt-docco-multi.png)](http://travis-ci.org/abovethewater/grunt-docco-multi)
# grunt-docco-multi

**Grab your markdown comments in your CoffeeScript through [Docco](http://jashkenas.github.io/docco/).**

Differs to grunt-docco in that all files are parsed as one, provide a nice jump-to menu in the output.

This may be a feature in grunt-docco, but that didn't just work out the box

## Installation

Install npm package, next to your project's Gruntfile:

    npm install --save-dev grunt-docco-multi

Add this line to your project's Gruntfile:

    grunt.loadNpmTasks('grunt-docco-multi');


## Version

    "grunt-docco-multi" : "~0.0.2"

## Configuration

`docco` is a multitask, so you can use it similary to `lint`, `watch` etc...


  grunt.initConfig

    ...

    docco:

      # ## use current sane defaults
      options:
        layout : "parallel"
        output : "docs/"

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

      # ## nothing to parse
      empty: '404.coffee'

    ...

### Options

Standard `docco` options are supported

    config:
        layout:     'parallel'
        output:     'docs/'
        template:   null
        css:        null
        extension:  null


licensed under the [MIT](http://abovethewater.mit-license.org) licence
(&copy;) 2013 abovethewater
