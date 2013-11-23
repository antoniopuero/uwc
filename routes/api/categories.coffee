categoryService = require "#{global.path.root}/services/categoryService"

module.exports = (app) ->

    app.get '/api/categories', (req, res, next) ->
        categoryService.findAll (err, categories) ->
            if err then return next err
            res.json categories

    app.post '/api/categories', (req, res, next) ->
        categoryService.create req.body, (err, category) ->
            if err then return next err
            res.json category

    app.put '/api/categories', (req, res, next) ->
        categoryService.update req.body.id, req.body, (err, category) ->
            if err then return next err
            res.json category

    app.delete '/api/categories/?:id', (req, res, next) ->
        categoryService.findById req.params.id, (err, category) ->
            if err then return next err
            category.remove (err, data) ->
                if err then return next err
                res.json 'Ok'
