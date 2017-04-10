(function() {
	angular.module('baypassionAdmin').factory('postAdService',function($http, $q) {
				var obj = {};
				var modifyableData = {};
				var successMessage = "";
				

				//setter getter for message
				obj.setMessage = function(message){
					console.log(message);
					successMessage = message;
				}
				obj.getMessage = function(){
					return successMessage;
				}
				
				obj.getAllPostId = function() {
					var deferred = $q.defer();
					var config = {
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					$http.get('getAllAdIdAndTitle', config).success(
							function(data, status, headers, config) {
								deferred.resolve(data);
							}).error(function(data, status, headers, config) {
						deferred.reject();
					});
					return deferred.promise;
				}
				obj.getAllPostDataById = function(adPostId) {
					var deferred = $q.defer();
					var config = {
						headers : {
							'Content-Type' : 'application/json'
						}
					};
					$http.get('getAdById?adPostId=' + adPostId, config).success(
							function(data, status, headers, config) {
								deferred.resolve(data);
							}).error(function(data, status, headers, config) {
						deferred.reject();
					});
					return deferred.promise;
				}
				obj.setPostData = function(postData)
				{
					modifyableData = postData;
				}
				obj.getPostData = function()
				{
					return modifyableData;
				}
				
				
				obj.approvePost = function(postId) {
					var deffered = $q.defer();
					$http.get('approvePost?postId=' + postId).success(function(data){
						console.log('data in service', data);
						deffered.resolve(data);
					}).error(function(data){
						deffered.reject();
					});
					return deffered.promise;
				}
				
				obj.deletePost = function(postId) {
					var deffered = $q.defer();
					$http.get('deletePost?postId=' + postId).success(function(data){
						console.log('data in service', data);
						deffered.resolve(data);
					}).error(function(data){
						deffered.reject();
					});
					return deffered.promise;
				}
		
				return obj;
			});
})();