(function() {
	angular.module('baypassionAdmin').factory('prohibitWordService',
			function($http, $q) {
				var obj = {};
				obj.saveWord = function(prohibitWord) {
					 var deferred = $q.defer();
					   var config = {
					     headers : {
					      'Content-Type' : 'application/json'
					     }
					   };
					   var data = angular.toJson(prohibitWord);
					    $http.post('adWords', data, config).success(
					    function(data, status, headers, config) {
					      deferred.resolve(data);
					     }).error(function(data, status, headers, config) {
					      deferred.reject();
					    });
					     return deferred.promise;
					   }
				obj.getAdWords = function(prohibitWord) {
					 var deferred = $q.defer();
					   var config = {
					     headers : {
					      'Content-Type' : 'application/json'
					     }
					   };
					    $http.get('prohibitWords').success(
					    function(data, status, headers, config) {
					      deferred.resolve(data);
					     }).error(function(data, status, headers, config) {
					      deferred.reject();
					    });
					     return deferred.promise;
					   }
				obj.editAdWord = function(wordId) {
					 var deferred = $q.defer();
					   var config = {
					     headers : {
					      'Content-Type' : 'application/json'
					     }
					   };
					    $http.put('editWord?wordId=' + wordId).success(
					    function(data, status, headers, config) {
					      deferred.resolve(data);
					     }).error(function(data, status, headers, config) {
					      deferred.reject();
					    });
					     return deferred.promise;
					   }
				obj.deleteAdWord = function(wordId) {
					 var deferred = $q.defer();
					   var config = {
					     headers : {
					      'Content-Type' : 'application/json'
					     }
					   };
					    $http.delete('deleteWord?wordId=' +wordId ).success(
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