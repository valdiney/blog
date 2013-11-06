docpadConfig = {
	collections:
    posts: ->
        @getCollection("html").findAllLive({relativeOutDirPath: 'posts'},[{date:-1}])

    pagination: ->
        @getCollection('html').findAllLive(
        	relativeOutDirPath: 'posts'
        	isPagedAuto: $ne: true
        )
    autores: ->
    	@getFilesAtPath("html").findAllLive({relativeOutDirPath: 'autores'},[{date:-1}])
}

module.exports = docpadConfig