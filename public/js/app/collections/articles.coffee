define ['backbone', 'cs!article'], (Backbone, Article) ->
  class Articles extends Backbone.Collection
    model: Article
    urlRoot: '/api/articles'
    url: '/api/articles'

  Articles