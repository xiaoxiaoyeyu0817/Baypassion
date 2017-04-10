(function() {
	angular.module('baypassionAdmin').factory(
			'contactUsAdminService',
			function($http, $q) {
				var obj = {};
				obj.getAllContactUs = function() {
					 var deferred = $q.defer();
					   var config = {
					     headers : {
					      'Content-Type' : 'application/json'
					     }
					   };
					    $http.get('viewContactUs', config).success(
					    function(data, status, headers, config) {
					      deferred.resolve(data);
					      console.log(data ,"service");
					     }).error(function(data, status, headers, config) {
					      deferred.reject();
					    });
					     return deferred.promise;
					   }
				return obj;

			});
})();