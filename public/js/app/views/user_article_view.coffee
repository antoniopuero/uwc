define ['marionette'], (Marionette) ->
  class UserArticleView extends Marionette.ItemView
    tagName: 'div'
    className: 'article span3'
    attributes: {"data-num": 2}
    template: '#user-article-template'

    templateHelpers: ->
      cut: (data) ->
        if data.length > 170
          data.slice(0, 170) + '...'
        else
          data

      rep: (data) ->
        data.replace(/\<img[^\>]*\>/, "")

      getImg: (data) ->
        console.log  data.match(/\<img[^\>]*\>/)[0]

        img = data.match(/\<img[^\>]*\>/)


        if img?
            return img[0]
        else
            ''

  UserArticleView