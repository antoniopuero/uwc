define ['marionette'], (Marionette) ->
  class AdminArticleView extends Marionette.ItemView
    tagName: 'tr'
    template: '#admin-article-template'

  AdminArticleView