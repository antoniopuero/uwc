define [
  'marionette'
  'cs!articles'
  'cs!categories'
  'cs!userArticlesView'
  'isotope',
  'ckeditorAdapter'
], (Marionette, Articles, Categories, UserArticlesView) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->
      @articles = new Articles

    regions:
      modal: "#modal"
      content: '#user-content'

    showArticles: ->
      @content.show new UserArticlesView collection: @articles
      @articles.fetch()

  UserLayout
