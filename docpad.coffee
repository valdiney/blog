docpadConfig = {
	collections:
    posts: ->
        @getCollection("html").findAllLive({relativeOutDirPath: 'posts'},[{date:-1}])
}

module.exports = docpadConfig