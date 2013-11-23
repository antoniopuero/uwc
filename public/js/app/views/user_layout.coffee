define [
  'marionette'
], (Marionette) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->
      # @articles = new Articles
      # @categories = new Categories

    regions:
      modal: "#modal"

    onShow: ->
      $('#content').isotope {
          itemSelector : '.article',
          layoutMode : 'fitRows',
          getSortData : {
            priority: ( $elem ) ->
              parseInt( $elem.data('num'), 10)
          },
          sortBy: 'priority'
        }, () ->
          console.log 'fsafads'


    showArticles: ->
      @content.show new AdminArticlesView collection: @articles
      @articles.fetch()

  UserLayout
