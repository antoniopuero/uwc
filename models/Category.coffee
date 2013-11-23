mongoose = require 'mongoose'
Schema = mongoose.Schema

CategorySchema = new Schema
    title:
        type: String
        required: true

    orderNumber:
        type: Number
        default: 0

module.exports = global.connections.common.model 'Category', CategorySchema
