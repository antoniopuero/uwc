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
      # $('#content').imagesLoaded (instance)->
      #   console.log instance

      # $('#content').isotope {
      #     itemSelector : '.article',
      #     layoutMode : 'fitRows',
      #     getSortData : {
      #       priority: ( $elem ) ->
      #         parseInt( $elem.data('num'), 10)
      #     },
      #     sortBy: 'priority'
      #   }, () ->
      #     console.log 'it works'
      #   $('.article .article-prologue').attr({
      #     contenteditable: true,
      #     spellcheck: false
      #   }).ckeditor({
      #     filebrowserImageUploadUrl: '/upload'
      #   })


    showArticles: ->
      @content.show new UserArticlesView collection: @articles
      @articles.fetch()
      window.a = @articles

  UserLayout
