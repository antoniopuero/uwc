define [
  'marionette',
  'isotope',
  'ckeditorAdapter',
  'imagesLoaded'
], (Marionette) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    initialize: ->
      # @articles = new Articles
      # @categories = new Categories

    regions:
      modal: "#modal"

    onShow: ->
      $('#content').imagesLoaded (instance)->
        console.log instance

      $('#content').isotope {
          itemSelector : '.article',
          layoutMode : 'fitRows',
          getSortData : {
            priority: ( $elem ) ->
              parseInt( $elem.data('num'), 10)
          },
          sortBy: 'priority'
        }, () ->
          console.log 'it works'
        $('.article .article-prologue').attr({
          contenteditable: true,
          spellcheck: false
        }).ckeditor({
          filebrowserImageUploadUrl: '/upload'
        })


    showArticles: ->
      @content.show new AdminArticlesView collection: @articles
      @articles.fetch()

  UserLayout
