define [
  'marionette',
  'isotope',
  'ckeditorAdapter'
], (Marionette) ->
  class UserLayout extends Marionette.Layout
    template: '#user-template'

    regions:
      modal: "#modal"

    onShow: ->
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

  UserLayout
