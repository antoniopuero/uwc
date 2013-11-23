articleService = require "#{global.path.root}/services/articleService"

module.exports = (app) ->

    app.get '/api/articles', (req, res, next) ->
        categoryId = req.query.categoryId

        articleService.findAll categoryId, (err, articles) ->
            if err then return next err
            res.json articles

    app.post '/api/articles', (req, res, next) ->
        articleService.create req.body, (err, article) ->
            if err then return next err
            res.json article

    app.put '/api/articles', (req, res, next) ->
        articleService.update req.body.id, req.body, (err, article) ->
            if err then return next err
            res.json article

    app.delete '/api/articles/?:id', (req, res, next) ->
        articleService.findById req.body.id, (err, article) ->
            if err then return next err
            article.remove (err, data) ->
                if err then return next err
                res.json 'Ok'

