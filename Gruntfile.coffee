module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    coffee:
      compile:
        files:
          'lib/jquery.textfade.js': 'src/jquery.textfade.coffee'
    uglify:
      options:
        compress:         true
        mangle:           true
        preserveComments: (_, comment) -> /^!/.test comment.value
      minify:
        files:
          'lib/jquery.textfade.min.js': 'lib/jquery.textfade.js'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'prepublish', ['coffee', 'uglify']

  null