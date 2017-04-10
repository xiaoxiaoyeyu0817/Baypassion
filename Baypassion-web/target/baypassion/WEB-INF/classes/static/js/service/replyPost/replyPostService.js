(function() {
	angular.module('baypassionApp').factory('replyPostService', function($http, $q ) 
	{
		var obj = {};
		obj.replyPost = function(replyContent) 
		{
			var deferred = $q.defer();
			var config = 
			{
				headers : {
						'Content-Type' : 'application/json'
					}
			};
			var data = angular.toJson(replyContent);
			$http.post('replyPost', data, config).success(
				function(data, status, headers, config) 
				{
					deferred.resolve(data);
				}).error(function(data, status, headers, config) 
				{
					deferred.reject();
				});
				return deferred.promise;
		}
		return obj;
	});
})();