define ['marionette'], (Marionette) ->
  class AdminArticleView extends Marionette.ItemView
    tagName: 'div'
    template: '#user-article-full-view'

  AdminArticleView