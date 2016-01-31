app = angular.module 'example.api', ['ngResource']

app.factory 'Organization', ['$resource', ($resource) ->
    $resource '/api/orgs/:title', title: '@title'
]




