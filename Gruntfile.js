'use strict';
module.exports = function(grunt) {

	grunt.initConfig({

		// watch for changes
		sass: {
			dist: {
				options: {
					style: 'compressed'
				},
				files: [{
					expand: true,
					cwd: 'public/styles/sass',
					src: ['*.sass', '!_*.sass'],
					dest: 'public/styles/',
					ext: '.css'
				}]
			}
		},

		jshint: {
			options: {
				jshintrc: '.jshintrc',
				"force": true
			},
			all: [
				'Gruntfile.js',
				'public/scripts/**/*.js'
			]
		},

		copy: {
			main: {
				files: [
					{expand: true, src: ['extensions/**'], dest: '../'}
				]
			}
		},

		watch: {
			options: {
				livereload: true
			},
			sass: {
				files: ['public/styles/sass/**/*.sass'],
				tasks:['sass']
			},
			js: {
				files: '<%= jshint.all %>',
				tasks: ['jshint']
			},
			livereload: {
				files: ['*.xsl', '*.xslt', '*.php', 'public/styles/**/*.css', 'public/images/**/*.{png,jpg,jpeg,gif,webp,svg}', 'public/scripts/**/*.js']
			}
		}
	});

	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-jshint');
	grunt.loadNpmTasks('grunt-contrib-copy');

	grunt.registerTask('default', 'watch');
}