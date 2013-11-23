module.exports = (app) ->

    app.get '/', (req, res, next) ->
        if req.user?.isAdmin
            res.render 'admin.html'
        else
            res.render 'user.html'

    app.get '/admin', (req, res, next) ->

        console.log(req.user);
        if req.user and req.user.isAdmin
            res.render 'admin.html'
        else
            next new app.Errors.Unauthorized


    app.get '/mobile', (req, res, next) ->
        res.render 'mobile.html'
