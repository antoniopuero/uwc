define ['cs!userLayout', 'marionette'], (UserLayout, Marionette) ->
  class UserRouter extends Marionette.AppRouter
    routes:
      '': 'index'

    index: ->
      App.layout = new UserLayout
      App.content.show App.layout

  UserRouter