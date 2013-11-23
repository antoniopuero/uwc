mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

ArticleSchema = new Schema
    title:
        type: String
        required: true
    body:
        type: String
        required: true

    categoryId: ObjectId

    author: {}

    tags: [String]

    orderNumber: Number

    rating: Number



module.exports = global.connections.common.model 'Article', ArticleSchema
