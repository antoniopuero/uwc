define ['marionette'], (Marionette) ->
  class UserArticleView extends Marionette.ItemView
    tagName: 'div'
    className: 'article span3'
    attributes: {"data-num": 2}
    template: '#user-article-template'

  UserArticleView