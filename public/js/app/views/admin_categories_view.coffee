define ['marionette', 'cs!adminCategoryView', 'cs!category'], (Marionette, AdminCategoryView, Category) ->
  class AdminCategoriesView extends Marionette.CompositeView
    itemView: AdminCategoryView
    itemViewContainer: "tbody"
    template: '#admin-categories-template'

    events:
      'click .show-form': 'add'
      'click .submit .btn-success': 'save'
      'click .submit .btn-danger': 'cancel'

    ui:
      form: '.add-form'
      inputName: '.add-form .name'

    save: (e) ->
      $.post '/api/categories', title: @ui.inputName.val(), (data) =>
        @collection.add new Category(data)
        @ui.inputName.val('')
        @ui.form.fadeOut()

      e.preventDefault()

    cancel: (e) ->
      e.preventDefault()
      @ui.form.fadeOut()

    add: (e) ->
      e.preventDefault()
      @ui.form.fadeIn()

  AdminCategoriesView