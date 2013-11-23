define [
  'cs!app/views/nav_view'
  'cs!app/routers/admin_router'
  'cs!app/routers/user_router'
], (NavView, AdminRouter, UserRouter) ->
  App = new Marionette.Application()

  App.addRegions
    nav: "#nav"
    content: "#content"

  App.addInitializer ->
    if $('#admin').length
      App.router = new AdminRouter

    if $('#user').length
      App.router = new UserRouter

    App.nav.show new NavView

  App.addInitializer ->
    $('body').show()
    Backbone.history.start()

  window.App = App

  App