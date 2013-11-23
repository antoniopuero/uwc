define ['marionette'], (Marionette) ->
  class AdminCategoryView extends Marionette.ItemView
    tagName: 'tr'
    template: '#admin-category-template'

    events:
      'click .delete': 'delete'

    delete: ->
      @model.destroy()

  AdminCategoryView