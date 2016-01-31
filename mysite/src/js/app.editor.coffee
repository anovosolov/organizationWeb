app = angular.module 'example.app.editor', ['example.api']

app.controller 'EditController', ['$scope', 'Organization', ($scope, Organization) ->
    
    $scope.newOrganization = new Organization()

    $scope.save = ->
        $scope.newOrganization.$save().then (result) ->
            $scope.orgs.push result
        .then ->
            # Reset our editor to a new blank post
            $scope.newOrganization = new Organization()
        .then ->
            # Clear any errors
            $scope.errors = null
        , (rejection) ->
            $scope.errors = rejection.data
]
