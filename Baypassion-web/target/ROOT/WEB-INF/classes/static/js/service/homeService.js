'use strict';

myapp.service('HomeService', function($log, $resource) {
    return {
        getAllMenu : function() {
            var menuResource = $resource('findAllMenu', {}, {
                query : {
                    method : 'GET',
                    params : {},
                    isArray : true
                }
            });
            return menuResource.query();
        }
    }
});
