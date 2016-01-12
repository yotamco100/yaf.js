module.exports = function(grunt){
	grunt.initConfig({
  		mkdir: {
    			all: {
      				options: {
        				create: ['built']
      				},
    			},
  		},
	});
	grunt.loadNpmTasks('grunt-mkdir');
	grunt.registerTask('buildYaf', 'Builds yaf.js', function() {
   		grunt.file.write('built/yaf.js', '');
	});
	grunt.registerTask('default', ['mkdir', 'buildYaf']);
};
