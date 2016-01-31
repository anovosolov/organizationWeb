app = angular.module 'example.app.basic', []

app.controller 'AppController', ['$scope', '$http', ($scope, $http) ->
    $scope.orgs = []
    $http.get('/api/orgs').then (result) ->
        angular.forEach result.data, (item) ->
            $scope.orgs.push item
]
