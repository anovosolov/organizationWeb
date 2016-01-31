app = angular.module 'example.app.crud', ['example.api.crud']

app.controller 'AppController', ['$scope', 'Organization', ($scope, Organization) ->
    $scope.orgs = []
    $scope.newName = ""
    $scope.newIncome = ""

    $scope.loadUsers = ->
        # Reload the users
        Organization.query().$promise.then (results) ->
            $scope.orgs = results
    
    $scope.addUser = ->
        org = new Organization(title: $scope.newName, income: $scope.newIncome)
        $scope.newName = ""
        $scope.newIncome = ""
        org.$save()
        .then $scope.loadUsers
    
    $scope.deleteUser = (org) ->
        org.$delete()
        .then $scope.loadUsers
        
    $scope.loadUsers()
]
