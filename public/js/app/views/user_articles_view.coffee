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

    onRender: ->
      console.log @$el.html()

  UserArticlesView