app = angular.module 'example.api.crud', []

app.factory 'Organization', ['$q', ($q) ->
    storage = {}
    
    class MockOrg
        constructor: (params) ->
            for key, value of params
                @[key] = value
        @query: ->
            dfr = $q.defer()
            values = (val for key, val of storage)
            dfr.resolve(values)
            values.$promise = dfr.promise
            return values
        @save: (params) ->
            org = new @(params)
            org.$save()
            return org
        $save: ->
            storage[@title] = @
            dfr = $q.defer()
            dfr.resolve(@)
            return dfr.promise
        $delete: ->
            delete storage[@title]
            dfr = $q.defer()
            dfr.resolve()
            return dfr.promise
    
    for title in ['Org1', 'Org12', 'Org3', 'Org4']
        org = new MockOrg(title: title, income : 100 )
        storage[org.title] = org
    
    return MockOrg
]