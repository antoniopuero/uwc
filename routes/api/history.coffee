historyService = require "#{global.path.root}/services/historyService"

module.exports = (app) ->

    app.get '/api/history', (req, res, next) ->

        historyService.findByArticleId req.body.articleId, (err, articles) ->
            if err then return next err
            res.json articles
