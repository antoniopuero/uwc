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
      isotope: "components/isotope/jquery.isotope",

      // MODELS
      user: 'app/models/users',
      users: 'app/collections/users',
      article: 'app/models/article',
      articles: 'app/collections/articles',
      category: 'app/models/category',
      categories: 'app/collections/categories',

      // ROUTERS
      userRouter: 'app/routers/user_router',
      adminRouter: 'app/routers/admin_router',

      // VIEWS
      adminLayout: 'app/views/admin_layout',
      userLayout: 'app/views/user_layout',
      navView: 'app/views/nav_view',
      adminArticlesView: 'app/views/admin_articles_view',
      adminArticleView: 'app/views/admin_article_view',
      adminCategoriesView: 'app/views/admin_categories_view',
      adminCategoryView: 'app/views/admin_category_view'
	},
	shim: {
        bootstrap: {
            deps: ['jquery']
        },
        isotope: {
            deps: ['jquery']
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

requirejs(['cs!app/app', 'isotope'], function (App) {
    return $(function(){
        App.start();
    });
});
