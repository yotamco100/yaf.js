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
   		grunt.file.write('built/yaf.js', 'global.require=function(){global.require=undefined;return undefined;}module.exports=require;');
	});
	grunt.registerTask('default', ['mkdir', 'buildYaf']);
};
