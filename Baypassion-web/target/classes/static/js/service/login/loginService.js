(function() {
	angular.module('baypassionApp').factory('loginService', function($http, $q ) {
			var obj = {};
			obj.getLogin = function(user) {
				 var deferred = $q.defer();
				   var config = {
				     headers : {
				      'Content-Type' : 'application/json'
				     }
				   };
				   var data = angular.toJson(user);
				    $http.post('login', data, config).success(
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