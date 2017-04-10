(function () {
    angular.module('baypassionApp').factory('sectionService', function ($http, $q) {
        var obj = {};
        obj.saveSession = function (obj) {
            var deferred = $q.defer();
            $http.post('login', obj).success(
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