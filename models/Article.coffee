mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

ArticleSchema = new Schema
    title:
        type: String
        required: true
    body:
        type: String
        default: 'Body of your article'

    categoryId: ObjectId

    author: {}

    tags: [String]

    orderNumber: Number

    rating: Number

    isPublished: Boolean

module.exports = global.connections.common.model 'Article', ArticleSchema
