app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider

      .state 'public',
        abstract: true,
        url: '/',
        templateUrl: 'layout/main.html',
        # controller: 'LayoutController'

      .state 'public.index',
        url: '',
        templateUrl: 'views/index.html'
        # controller: 'IndexController'

      .state 'public.skeletons',
        url: 'skeletons',
        templateUrl: 'views/skeletons.html'
        # controller: 'IndexController'

      .state 'public.galleries',
        url: 'galleries',
        templateUrl: 'views/galleries.html'
        # controller: 'IndexController'

      .state 'public.checkboxes',
        url: 'checkboxes',
        templateUrl: 'views/checkboxes.html'
        # controller: 'IndexController'

      .state 'public.inputs',
        url: 'inputs',
        templateUrl: 'views/inputs.html'
        # controller: 'IndexController'

      .state 'public.selects',
        url: 'selects',
        templateUrl: 'views/selects.html'
        # controller: 'IndexController'

      .state 'public.cordova',
        url: 'cordova',
        templateUrl: 'views/cordova.html'
        # controller: 'IndexController'

      .state 'public.buttons',
        url: 'buttons',
        templateUrl: 'views/buttons.html'
        # controller: 'IndexController'

      .state 'public.footer',
        url: 'footer',
        templateUrl: 'views/footer.html'
        # controller: 'IndexController'

      .state 'public.tabs',
        url: 'tabs',
        templateUrl: 'views/tabs.html'
        # controller: 'IndexController'

      .state 'public.navigations',
        url: 'navigations',
        templateUrl: 'views/navigations.html'
        # controller: 'IndexController'

      .state 'public.popups',
        url: 'popups',
        templateUrl: 'views/popups.html'
        # controller: 'IndexController'

      .state 'public.images',
        url: 'images',
        templateUrl: 'views/images.html'
        # controller: 'IndexController'

      .state 'public.layouts',
        url: 'layouts',
        templateUrl: 'views/layouts.html'
        # controller: 'IndexController'

      .state 'public.hackathon',
        url: 'hackathon',
        templateUrl: 'views/hackathon.html'

      .state 'public.simple',
        url: 'simple',
        templateUrl: 'views/simple.html'
        # controller: 'IndexController'


    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])
