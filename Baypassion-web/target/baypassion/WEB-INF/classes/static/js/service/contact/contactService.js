(function () {
    angular.module('baypassionApp').factory(
            'contactUsService',
            function ($http, $q) {
                var obj = {};
                obj.getAllCity = function () {                    
                    var deferred = $q.defer();
                    var config = {
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    };
                    $http.get('getAllCities', config).success(
                            function (data, status, headers, config) {
                                deferred.resolve(data);
                            }).error(function (data, status, headers, config) {
                        deferred.reject();
                    });
                    return deferred.promise;
                }
                obj.saveContactUs = function (contactUs) {
                    var deferred = $q.defer();
                    var config = {
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    };
                    var data = angular.toJson(contactUs);
                    $http.post('contactUs', data, config).success(
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