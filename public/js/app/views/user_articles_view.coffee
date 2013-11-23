define [
  'marionette'
  'cs!userArticleView'
  'cs!article'
], (Marionette, userArticleView, Article) ->
  class UserArticlesView extends Marionette.CompositeView
    itemView: userArticleView
    itemViewContainer: 'div'
    template: '#user-articles-template'

    initialize: (options) ->

    onCompositeCollectionRendered: ->
        @$('#content').isotope {
          itemSelector : '.article',
          layoutMode : 'fitRows',
          getSortData : {
            priority: ( $elem ) ->
              parseInt( $elem.data('num'), 10)
          },
          sortBy: 'priority'
        }

  UserArticlesView