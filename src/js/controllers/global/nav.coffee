app.controller 'navController', [ '$scope', ($scope) ->
  $scope.navList = [
      'sref': 'public.skeletons'
      'name': 'Skeletons'
    ,
      'sref': 'public.examples.checkboxes'
      'name': 'Examples'
    ,
      'sref': 'public.hackathon.upcoming'
      'name': 'Hackathon list'
  ]
]
