define ['cs!app/views/admin_layout', 'marionette'], (AdminLayout, Marionette) ->
  class AdminRouter extends Marionette.AppRouter
    initialize: ->
      App.layout = new AdminLayout
      App.content.show App.layout

    routes:
      '': 'index'
      'categories': 'categories'
      'categories/:id': 'category'
      'articles': 'articles'
      'articles/:id': 'article'

    index: ->
      App.layout.showArticles()

    article: (id) ->
      App.layout.showArticle(id)

    articles: ->
      App.layout.showArticles()

    category: (id) ->
      App.layout.showCategory(id)

    categories: ->
      App.layout.showCategories()

  AdminRouter