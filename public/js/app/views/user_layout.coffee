define [
  'marionette'
  'cs!article'
  'cs!articles'
  'cs!categories'
  'cs!userArticlesView'
  'cs!userArticleFullView'
  'isotope',
  'ckeditorAdapter'
], (Marionette, Article, Articles, Categories, UserArticlesView, UserArticleFullView) ->
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

    showArticle: (id) ->
      model = new Article
      @articles.add model
      model.id = id
      model.fetch success: =>
        @content.show new UserArticleFullView model: model

  UserLayout
