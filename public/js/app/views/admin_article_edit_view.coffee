define ['marionette'], (Marionette) ->
  class AdminArticleEditView extends Marionette.ItemView
    template: '#admin-article-edit-template'

    events:
      'click .show-form': 'add'
      'click .submit .btn-success': 'save'
      'click .submit .btn-danger': 'cancel'

    ui:
      form: '.add-form'
      inputName: '.add-form .name'

    onRender: ->
      @$('.show-form').hide() unless @categoryId?

    prepareModelData: ->
      {}

    resetForm: ->


    save: (e) ->
      @model.set @prepareModelData()
      @model.save @model.toJSON(),
        success: =>
          @collection.push @model
          @resetForm()

      e.preventDefault()

  AdminArticleEditView