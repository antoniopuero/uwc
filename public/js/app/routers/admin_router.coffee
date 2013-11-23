define ['cs!app/views/admin_layout', 'marionette'], (AdminLayout, Marionette) ->
  class AdminRouter extends Marionette.AppRouter
    initialize: ->
      App.layout = new AdminLayout
      App.content.show App.layout

    routes:
      '': 'index'
      'categories': 'categories'
      'articles': 'articles'

    index: ->
      App.layout.showArticles()

    articles: ->
      App.layout.showArticles()

    categories: ->
      App.layout.showCategories()

  AdminRouter