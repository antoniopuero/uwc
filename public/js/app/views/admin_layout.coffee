define [
  'marionette'
  'cs!articles'
  'cs!categories'
  'cs!adminArticlesView'
  'cs!adminCategoriesView'
  'cs!adminArticleEditView'
], (Marionette, Articles, Categories, AdminArticlesView, AdminCategoriesView, AdminArticleEditView) ->
  class AdminLayout extends Marionette.Layout
    template: '#admin-template'

    regions:
      content: '#admin-content'

    initialize: ->
      @articles = new Articles
      @categories = new Categories

    showArticle: (id) ->
      @content.show new AdminArticleEditView model: @articles.get(id)

    showArticles: ->
      @content.show new AdminArticlesView collection: @articles
      @articles.fetch()

    showCategory: (id) ->
      @content.show new AdminArticlesView collection: @articles, categoryId: id
      @articles.fetch data: { categoryId: id }

    showCategories: ->
      @content.show new AdminCategoriesView collection: @categories
      @categories.fetch()

  AdminLayout
