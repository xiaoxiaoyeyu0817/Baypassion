(function () {
    angular.module('baypassionApp').factory('postLocalAdService', function ($http, $q) {
        var obj = {};
        obj.getAllCountry = function () {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            var data = angular.toJson();
            $http.get('getAllCountry', data, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }
        return obj;

    });
})();