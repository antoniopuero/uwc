define [
  'marionette'
  'cs!articles'
  'cs!categories'
  'cs!adminArticlesView'
  'cs!adminCategoriesView'
], (Marionette, Articles, Categories, AdminArticlesView, AdminCategoriesView) ->
  class AdminLayout extends Marionette.Layout
    template: '#admin-template'

    regions:
      content: '#admin-content'

    initialize: ->
      @articles = new Articles
      @categories = new Categories

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
