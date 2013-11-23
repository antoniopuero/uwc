define ['marionette', 'cs!adminCategoryView'], (Marionette, AdminCategoryView) ->
  class AdminCategoriesView extends Marionette.CompositeView
    itemView: AdminCategoryView
    itemViewContainer: "tbody"
    template: '#admin-categories-template'

  AdminCategoriesView