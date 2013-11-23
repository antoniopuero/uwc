mongoose = require 'mongoose'
Schema = mongoose.Schema

CategorySchema = new Schema
    title:
        type: String
        required: true

    orderNumber: Number

module.exports = global.connections.common.model 'Category', CategorySchema
