docpadConfig = {
	collections:
    posts: ->
        @getCollection("html").findAllLive({relativeOutDirPath: 'posts'},[{date:-1}])
    autores: ->
    	@getCollection("html").findAllLive({relativeOutDirPath: 'autores'},[{date:-1}])
}

module.exports = docpadConfig