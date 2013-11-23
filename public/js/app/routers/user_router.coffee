define ['cs!userLayout', 'marionette'], (UserLayout, Marionette) ->
  class UserRouter extends Marionette.AppRouter
    routes:
      '': 'index'
      'articles/:id': 'showArticle'

    initialize: ->
      App.layout = new UserLayout
      App.content.show App.layout

    index: ->
      App.layout.showArticles()

    showArticle: (id) ->
      App.layout.showArticle(id)

  UserRouter