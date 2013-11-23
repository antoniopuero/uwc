define ['backbone', 'cs!category'], (Backbone, Category) ->
  class Categories extends Backbone.Collection
    model: Category
    url: '/api/categories'

  Categories