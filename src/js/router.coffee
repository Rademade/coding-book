app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider

      .state 'public',
        abstract: true,
        url: '',
        templateUrl: 'layout/main.html'
        # controller: 'IndexController'

# Index views
      .state 'public.index',
        abstract: true,
        url: '/index',
        templateUrl: 'views/index/main.html'
        # controller: 'IndexController'

      .state 'public.index.about',
        url: '/about',
        templateUrl: 'views/index/about.html'
        # controller: 'IndexController'

      .state 'public.index.code',
        url: '/code',
        templateUrl: 'views/index/code-check-list.html'
        # controller: 'IndexController'

      .state 'public.index.simple',
        url: '/simple',
        templateUrl: 'views/index/simple.html'
        # controller: 'IndexController'

# Hackathons views #
      .state 'public.hackathon',
        abstract: true,
        url: '/hackathon',
        templateUrl: 'views/hackathon/main.html'
        # controller: 'IndexController'

      .state 'public.hackathon.upcoming',
        url: '/upcoming',
        templateUrl: 'views/hackathon/upcoming.html'
        # controller: 'IndexController'

      .state 'public.hackathon.passed',
        url: '/passed',
        templateUrl: 'views/hackathon/passed.html'
        # controller: 'IndexController'

      .state 'public.article',
        abstract: true,
        url: '/article',
        templateUrl: 'views/hackathon/article.html'
        # controller: 'IndexController'

      .state 'public.article.oocss',
        url: '/oocss',
        templateUrl: 'views/articles/oocss.html'
        # controller: 'IndexController'

      .state 'public.article.current-news',
        url: '/current-news',
        templateUrl: 'views/articles/current-news.html'
        # controller: 'IndexController'

      .state 'public.article.empty',
        url: '/empty',
        templateUrl: 'views/articles/empty.html'
        # controller: 'IndexController'

# Skeletons views #
      .state 'public.skeletons',
        url: '/skeletons',
        templateUrl: 'views/skeletons/main.html'
        # controller: 'IndexController'

# Examples views #
      .state 'public.examples',
        abstract: true,
        url: '/examples',
        templateUrl: 'views/examples/main.html'
        # controller: 'IndexController'

      .state 'public.examples.checkboxes',
        url: '/checkboxes',
        templateUrl: 'views/examples/checkboxes.html'
        # controller: 'IndexController'

      .state 'public.examples.inputs',
        url: '/inputs',
        templateUrl: 'views/examples/inputs.html'
        # controller: 'IndexController'

      .state 'public.examples.selects',
        url: '/selects',
        templateUrl: 'views/examples/selects.html'
        # controller: 'IndexController'

      .state 'public.examples.buttons',
        url: '/buttons',
        templateUrl: 'views/examples/buttons.html'
        # controller: 'IndexController'

      .state 'public.examples.navigations',
        url: '/navigations',
        templateUrl: 'views/examples/navigations.html'
        # controller: 'IndexController'

      .state 'public.examples.images',
        url: '/images',
        templateUrl: 'views/examples/images.html'
        # controller: 'IndexController'

      .state 'public.examples.layouts',
        url: '/layouts',
        templateUrl: 'views/examples/layouts.html'
        # controller: 'IndexController'

# Others views #
      .state 'public.tabs',
        url: 'tabs',
        templateUrl: 'views/tabs.html'
        # controller: 'IndexController'

      .state 'public.popups',
        url: 'popups',
        templateUrl: 'views/popups.html'
        # controller: 'IndexController'

      .state 'public.galleries',
        url: 'galleries',
        templateUrl: 'views/galleries.html'
        # controller: 'IndexController'

      .state 'public.cordova',
        url: 'cordova',
        templateUrl: 'views/cordova.html'
        # controller: 'IndexController'

      .state 'public.footer',
        url: 'footer',
        templateUrl: 'views/footer.html'
        # controller: 'IndexController'


    $urlRouterProvider.otherwise '/index/about'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])
