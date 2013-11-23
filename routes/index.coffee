fs = require 'fs'
module.exports = (app) ->

    app.get '/', (req, res, next) ->
        if req.user?.isAdmin
            res.render 'admin.html'
        else
            res.render 'user.html'

    app.get '/admin', (req, res, next) ->
        if req.user and req.user.isAdmin
            res.render 'admin.html'
        else
            next new app.Errors.Unauthorized


    app.get '/mobile', (req, res, next) ->
        res.render 'mobile.html'

    app.post '/upload', (req, res, next) ->

        console.log req.files.upload

        publicPath = "/i/" + Math.random()
        newPath = "#{global.path.root}/public" + publicPath


        fs.readFile req.files.upload.path, (err, data) ->
            if err then return callback next(err)
            fs.writeFile newPath, data, (err) ->
                res.end '<script type="text/javascript">window.parent.CKEDITOR.tools.callFunction(' + req.query.CKEditorFuncNum + ',"' + publicPath + '", "");</script>'