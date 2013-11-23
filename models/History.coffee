mongoose = require 'mongoose'
Schema = mongoose.Schema
ObjectId = Schema.ObjectId

HistorySchema = new Schema
    author:
        type: String
        required: true
    date: Date
    articleId: ObjectId

exports = global.connections.common.model 'History', HistorySchema
