"use strict";

// Require the modules
var fs = require('fs');

// Call the methods
fs.readdir('src/documents/posts/', function(error, files) {

	// Loop for all elements in array
	for(var i = 0; i < files.length; i++){
		var file_directory = 'src/documents/posts/'+files[i];
		//console.log(file);
		console.log(files[i]);

		// Read files
		fs.readFile(file_directory, function(error, data) {
			
			//console.log('----->' + data);
			// Write files
			fs.writeFile('src/documents/posts/sync/' + files[i], data, function() {
				console.log(files[i]);
			});
		});
	}
});