app.controller 'navController', [ '$scope', ($scope) ->
  $scope.navList = [
      'sref': 'public.skeletons'
      'name': 'Skeletons'
    ,
      'sref': 'public.examples.form'
      'name': 'Examples'
    ,
      'sref': 'public.problems'
      'name': 'Fixed problems'
  ]
]
