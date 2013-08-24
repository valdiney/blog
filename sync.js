"use strict";

// Require the modules
var fs = require('fs');

// Config vars
//var files = [],
var i = -1;

// Call the methods
fs.readdir('src/documents/posts/', function(error, files) {
	/*console.log(files);
	while(i < files.length){
		i++;
		//console.log(files[i]);
	}*/
	// Loop for all elements in array
	for(var i = 0; i < files.length; i++){
		//var file = 'src/documents/posts/'.files[i];
		console.log(files);
		// Read files
		/*fs.readFile('src/documents/posts/'.files[1], function(error, data) {
			console.log('----->' + data);
		});*/
	}
});