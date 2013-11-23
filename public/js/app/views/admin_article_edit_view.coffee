define ['marionette', 'ckeditorAdapter'], (Marionette) ->
  class AdminArticleEditView extends Marionette.ItemView
    template: '#admin-article-edit-template'
    id: 'edit-article'

    events:
      'click .submit .btn-success': 'save'
      'click .submit .btn-danger': 'cancel'

    prepareModelData: ->
      data = {}
      _.each CKEDITOR.instances, (inst) ->
        data[$(inst.element.$).data('name')] = inst.getData()

      data

    cancel: (e) ->
      e.preventDefault()
      window.location.hash = '/articles'

    onShow: ->
      @$('.editable').attr({
         contenteditable: true,
         spellcheck: false
      }).ckeditor({
        filebrowserImageUploadUrl: '/upload'
      });

    save: (e) ->
      @model.set @prepareModelData()
      @model.save @model.toJSON(),
        success: =>
          window.location.hash = '/articles'

      e.preventDefault()

  AdminArticleEditView