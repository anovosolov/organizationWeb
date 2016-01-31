app = angular.module 'example.app.update', ['example.api']


app.controller 'AppController', ['$scope', 'Organization', ($scope, Organization) ->
    $scope.orgs = []
    $scope.newName = ""

    $scope.loadUsers = ->
        # Reload the users
        Organization.query().$promise.then (results) ->
            $scope.orgs = results

    $scope.addUser = ->
        org = new Organization(title: $scope.newName)
        $scope.newName = ""
        org.$save()
        .then $scope.loadUsers

    $scope.deleteUser = (org) ->
        org.$delete()
        .then $scope.loadUsers

    $scope.loadUsers()
]