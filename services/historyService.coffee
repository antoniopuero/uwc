History = require "#{global.path.root}/models/History"

class historyService

    findByArticleId: (articleId, callback) ->
        History.findById articleId: articleId , callback

module.exports = new historyService
