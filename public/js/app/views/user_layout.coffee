define [
  'marionette'
  'cs!articles'
  'cs!categories'
  'cs!userArticlesView'
  'isotope',
  'ckeditorAdapter'
], (Marionette, Articles, Categories, UserArticlesView) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->
      @articles = new Articles

    regions:
      modal: "#modal"
      content: '#user-content'

    onShow: ->

#         $('.article .article-prologue').attr({
#           contenteditable: true,
#           spellcheck: false
#         }).ckeditor({
#           filebrowserImageUploadUrl: '/upload'
#         })

    showArticles: ->
      @content.show new UserArticlesView collection: @articles
      @articles.fetch()
      window.a = @articles

  UserLayout
