(function() {
	angular.module('baypassionAdmin').factory('adminService',
			function($http, $q) {
				var obj = {};
				obj.fetchAllUser = function() {
					var deffered = $q.defer();
					$http.get('fetchUsers').success(function(data){
						console.log('data in service', data);
						deffered.resolve(data);
					}).error(function(data){
						deffered.rejct();
					});
					return deffered.promise;
				}
				return obj;
			});

})();