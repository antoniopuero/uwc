Category = require "#{global.path.root}/models/category"

class categoryService

    findAll: (callback) ->
        Category.find {}, (err, categories) ->
            if err then return callback err
            return callback null, categories
    findById: (id, callback) ->
        Category.findById id , (err, category) ->
            if err then return callback err
            return callback null, category

    create: (data, callback) ->
        category = new Category(data)
        category.save (err, data) ->
            if err then return callback err
            return callback null, category

    update: (id, data, callback) ->
        console.log arguments
        @findById id, (err, category) ->
            if err then return callback err
            category.set(data)
            category.save (err, data) ->
                if err then return callback err
                return callback null, category

module.exports = new categoryService
