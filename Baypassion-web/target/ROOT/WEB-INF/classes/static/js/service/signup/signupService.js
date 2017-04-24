(function() {
	angular.module('baypassionApp').factory('signupService',function($http, $q) {

				var obj = {};
				obj.userSignup = function(user) {
					var deferred = $q.defer();
					var config = {
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					var data = angular.toJson(user);
					$http.post('saveUser', data, config).success(
							function(data, status, headers, config) {
								deferred.resolve(data);
							}).error(function(data, status, headers, config) {
						deferred.reject();
					});
					return deferred.promise;
				}
				obj.verifyEmail = function(email) {
					var deferred = $q.defer();
					var config = {
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					$http.get('verifyEmail?email='+ email, config).success(
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