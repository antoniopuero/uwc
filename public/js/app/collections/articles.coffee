define ['backbone', 'cs!article'], (Backbone, Article) ->
  class Articles extends Backbone.Collection
    model: Article
    url: '/api/articles'

  Articles