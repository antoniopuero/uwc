article = require "#{global.path.root}/models/article"

class categoryService

    findAll: (callback) ->
        Article.find {}, callback

    findById: (id, callback) ->
        Article.findById id , callback

    findByCategoryId: (categoryId, callback) ->
        Article.findOne {categoryId: id}, callback

    findByTagName: (tagsArray, callback) ->

    update: (id, data, callback) ->
        @findById id (err, article) ->
            if err then return callback err
            article.set(data)
            article.save (err, data) ->
                if err then return callback err
                return article

module.exports = new categoryService
