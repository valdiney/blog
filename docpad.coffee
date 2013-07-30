docpadConfig = {
	
	events:
    # Write After
    # Used to minify our assets with grunt
    writeAfter: (opts,next) ->
        # Prepare
        safeps = require('safeps')
        pathUtil = require('path')
        docpad = @docpad
        rootPath = docpad.getConfig().rootPath
        gruntPath = pathUtil.join(rootPath, 'node_modules', '.bin', 'grunt')

        # Perform the grunt `min` task
        # https://github.com/gruntjs/grunt/blob/0.3-stable/docs/task_min.md
        command = [gruntPath, 'min']

        # Execute
        safeps.spawn(command, {cwd:rootPath,output:true}, next)

        # Chain
        @
}

module.exports = docpadConfig