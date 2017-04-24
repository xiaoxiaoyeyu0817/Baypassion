(function() {
	angular.module('baypassionApp').factory(
			'demoService',
			function($http, $q) {
				var obj = {};
				var postId = {};
				var post = {};
				var mailData ={};
				obj.getPostId = function() {
					return postId;
				}

				obj.setPostId = function(adPostId) {
					postId = adPostId;
				}
				
				obj.getPost = function() {
					return post;
				}

				obj.setPost = function(adPost) {
					post = adPost;
				}
				
				obj.setMailData = function(mailContent){
					mailData = mailContent;
				}
				
				obj.getMailData = function(){
					return mailData;
				}
				
				obj.getPostByPostId = function (postId) {
		            var deferred = $q.defer();
		            var config = {
		                headers: {
		                    'Content-Type': 'application/json'
		                }
		            };
		            $http.get('getAdById?adPostId=' + postId, config).success(
		                    function (data, status, headers, config) {
		                        deferred.resolve(data);
		                    }).error(function (data, status, headers, config) {
		                deferred.reject();
		            });
		            return deferred.promise;
		        }
				
				obj.modifyUserInfo = function(userInfo) 
				{
					var deferred = $q.defer();
					var config = 
					{
						headers : 
						{
					      'Content-Type' : 'application/json'
					     }
					};
					var data = angular.toJson(userInfo);
					$http.put('updateUserInfo', data, config).success(
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