define ['marionette', 'cs!adminArticleView'], (Marionette, AdminArticleView) ->
  class AdminArticlesView extends Marionette.CompositeView
    itemView: AdminArticleView
    itemViewContainer: 'tbody'
    template: '#admin-articles-template'

  AdminArticlesView