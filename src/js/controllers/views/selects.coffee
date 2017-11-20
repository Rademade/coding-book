app.controller 'SelectsController', [ '$scope', ($scope) ->
  $scope.snippetList = [
    'nameSref': 'http://codepen.io'
    'sref': 'https://codepen.io/rademade/pen/zPzowm'
    'title': 'Select using jquery data()'
    'description': 'Store a part of data associated with the selected element'
  ,
    'nameSref': 'http://codepen.io'
    'sref': 'https://codepen.io/rademade/pen/yPXVXv'
    'title': 'Select using jquery html()'
    'description': 'Store the selected element'
  ,
    'nameSref': 'http://codepen.io'
    'sref': 'https://codepen.io/rademade/pen/mqwOMe'
    'title': 'Select with replace item'
    'description': 'Replace selected element with the current element'
  ]
]