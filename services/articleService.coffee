Article = require "#{global.path.root}/models/Article"

class categoryService

    findAll: (categoryId, callback) ->
        if categoryId?
            Article.where('categoryId').equals(categoryId).exec callback
        else
            Article.find {}, callback

    findById: (id, callback) ->
        Article.findById id , callback

    findByCategoryId: (categoryId, callback) ->
        Article.findOne {categoryId: id}, callback

    findByTagName: (tagsArray, callback) ->

    update: (id, data, callback) ->
        @findById id, (err, article) ->
            if err then return callback err
            article.set(data)
            article.save (err, data) ->
                if err then return callback err
                return callback null, article

    create: (data, callback) ->
        article = new Article(data)
        article.save (err, data) ->
            if err then return callback err
            return callback null, article

module.exports = new categoryService
