define ['marionette'], (Marionette) ->
  class UserArticleView extends Marionette.ItemView
    tagName: 'div'
    template: '#user-article-template'

  UserArticleView