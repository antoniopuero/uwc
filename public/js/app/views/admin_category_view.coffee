define ['marionette'], (Marionette) ->
  class AdminCategoryView extends Marionette.ItemView
    tagName: 'tr'
    template: '#admin-category-template'

  AdminCategoryView