(function() {
	angular.module('baypassionApp').factory('changePasswordService',function($http, $q) {

				var obj = {};
				obj.changePassword = function(user) {
					var deferred = $q.defer();
					var config = {
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					var data = angular.toJson(user);
					console.log('data',data);
					$http.post('changePassword', data, config).success(
							function(data, status, headers, config) {
								deferred.resolve(data);
							}).error(function(data, status, headers, config) {
						deferred.reject();
					});
					return deferred.promise;
				}
				return obj;
			});
})();