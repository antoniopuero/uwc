define ['cs!userLayout', 'marionette'], (UserLayout, Marionette) ->
  class UserRouter extends Marionette.AppRouter
    routes:
      '': 'index'

    initialize: ->
      App.layout = new UserLayout
      App.content.show App.layout

    index: ->
      App.layout.showArticles()

  UserRouter