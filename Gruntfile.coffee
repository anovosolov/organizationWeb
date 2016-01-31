module.exports = (grunt) ->
    grunt.initConfig(
        pkg: grunt.file.readJSON('package.json')
        coffee:
            files:
                src: ['mysite/src/js/**/*.coffee']
                dest: 'mysite/assets/js/script.js'
    )
    
    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.registerTask('default', ['coffee'])
