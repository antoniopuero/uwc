define [
  'marionette'
], (Marionette) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->

    regions:
      modal: "#modal"

  UserLayout
