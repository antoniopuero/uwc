define [
  'marionette'
  'cs!adminArticleView'
  'cs!article'
], (Marionette, AdminArticleView, Article) ->
  class AdminArticlesView extends Marionette.CompositeView
    itemView: AdminArticleView
    itemViewContainer: 'tbody'
    template: '#admin-articles-template'

    initialize: (options) ->
      @categoryId = options.categoryId

    events:
      'click .show-form': 'add'
      'click .submit .btn-success': 'save'
      'click .submit .btn-danger': 'cancel'

    ui:
      form: '.add-form'
      inputName: '.add-form .name'

    onRender: ->
      @$('.show-form').hide() unless @categoryId?

    save: (e) ->
      $.post '/api/articles', {title: @ui.inputName.val(), categoryId: @categoryId}, (data) =>
        @collection.add new Article(data)
        @ui.inputName.val('')
        @ui.form.fadeOut()

      e.preventDefault()

    cancel: (e) ->
      e.preventDefault()
      @ui.form.fadeOut()

    add: (e) ->
      e.preventDefault()
      @ui.form.fadeIn()

  AdminArticlesView