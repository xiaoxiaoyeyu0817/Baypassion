(function(){
	angular.module('baypassionApp').factory('emailService',function($http, $q){
		var obj = {};
		obj.sendMail = function(mailIds){
			var deferred = $q.defer();
			var data = angular.toJson(mailIds)
			console.log(data);
			   var config = {
			     headers : {
			      'Content-Type' : 'application/json'
			     }
			   };
			    $http.post('emailToFriend',data,config).success(
			    function(data, status, headers, config) {
			    	console.log('request send');
			      deferred.resolve(data);
			     }).error(function(data, status, headers, config) {
			      deferred.reject();
			    });
			     return deferred.promise;
		}
		
		return obj;
	})
})();