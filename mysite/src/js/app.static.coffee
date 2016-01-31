app = angular.module 'example.app.static', []

app.controller 'AppController', ['$scope', '$http', ($scope, $http) ->
    $scope.orgs = [
        title: 'Org #1'
        income: '100'
    ,
        title: 'Org #2'
        income: '200'
    ]
]
