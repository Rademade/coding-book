app.controller 'HackathonFutureController', ['$scope', ($scope) ->

  $scope.snippetDdList = [
    'date': '16.06.2016,'
    'person': 'by WebTech'
    'title': 'Review of Methodologies'
    'ddTitle': 'Discuss about difference between CSS methodologies'
  ,
    'date': '09.06.2016,'
    'person': 'by K.Fedorenko'
    'title': 'Layouts Page'
    'ddTitle': 'Prototypes of new Layouts Page on rademade.com'
  ]
]

app.controller 'HackathonPastController', ['$scope', ($scope) ->
  $scope.snippetDdList = []
]
