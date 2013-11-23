define [
  'marionette'
], (Marionette) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->

    regions:
      modal: "#modal"

    onShow: ->
      $('#container').isotope(
        {
          itemSelector : '.article',
          layoutMode : 'fitRows'
        }
      )

  UserLayout
