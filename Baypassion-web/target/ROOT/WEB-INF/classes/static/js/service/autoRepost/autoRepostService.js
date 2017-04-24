(function() {
	angular.module('baypassionApp').factory('autoRepostService',function($http, $q) 
	{
		var obj = {};
		obj.getPostByAutoRepostId = function(autoRepostId) 
		{
			var deferred = $q.defer();
			var config = 
			{
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					$http.get('getAutoRepostAdDetails?autoRepostId='+autoRepostId, config).success(
							function(data, status, headers, config) {
								deferred.resolve(data);
							}).error(function(data, status, headers, config) {
						deferred.reject();
					});
					return deferred.promise;
				}
		obj.updatePostByAutoRepost = function(autoRepost) 
		{
			var deferred = $q.defer();
			var config = 
			{
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					var data = angular.toJson(autoRepost);
					$http.post('updateAutoRepostAdDetails',data, config).success(
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