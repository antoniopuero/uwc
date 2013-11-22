requirejs.config({
    baseUrl: 'js/',
    paths: {
       // THIRD PART
        jquery: 'components/jquery/jquery',
        validator: 'components/jquery.validation/jquery.validate',
        bootstrap: 'components/bootstrap.css/js/bootstrap',
        inputmask: 'components/jquery.inputmask/js/jquery.inputmask',
        underscore: "components/underscore/underscore",
        backbone: "components/backbone/backbone",
        marionette: "components/backbone.marionette/lib/backbone.marionette",

        // MODELS
        user: 'app/models/users',
        users: 'app/collections/users',

        // ROUTERS
        userRouter: 'app/routers/user_router',
        adminRouter: 'app/routers/admin_router',

        // VIEWS
        adminLayout: 'app/views/admin_layout',
        userLayout: 'app/views/user_layout',
        navView: 'app/views/nav_view',
        modalView: 'app/views/modal_view',
	},
	shim: {
        bootstrap: {
            deps: ['jquery']
        },
        timepicker: {
          deps: ["jquery"]
        },
        validator: {
          deps: ['jquery']
        },
        backbone: {
            deps: ["underscore", "jquery"],
            exports: "Backbone"
        },
        marionette: {
            deps: ["underscore", "backbone", "jquery"],
            exports: "Marionette"
        },
        getCarView: {
            deps: ['validator']
        }
	},
	urlArgs: "bust=" + (new Date()).getTime()
});

requirejs(['cs!app/app'], function (App) {
    return $(function(){
        App.start();
    });
});
