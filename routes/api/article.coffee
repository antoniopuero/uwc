articleService = require "#{global.path.root}/services/articleService"

module.exports = (app) ->

    app.get '/api/articles/:id?', (req, res, next) ->
        categoryId = req.query.categoryId

        if req.params.id?
            articleService.findById req.params.id, (err, article) ->
                if err then return next err
                res.json article
        else
            articleService.findAll categoryId, (err, articles) ->
                if err then return next err
                res.json articles

    app.post '/api/articles', (req, res, next) ->
        articleService.create req.body, (err, article) ->
            if err then return next err
            res.json article

    app.put '/api/articles/:id?', (req, res, next) ->
        articleService.update req.params.id, req.body, (err, article) ->
            if err then return next err
            res.json article

    app.delete '/api/articles/:id?', (req, res, next) ->
        articleService.findById req.params.id, (err, article) ->
            if err then return next err
            article.remove (err, data) ->
                if err then return next err
                res.json 'Ok'

