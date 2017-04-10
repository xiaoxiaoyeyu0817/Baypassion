(function() {
	angular.module('baypassionAdmin').factory('editService', function($http, $q ) {
			var obj = {};
			/*obj.modifyPost = function(user) {
				 var deferred = $q.defer();
				   var config = {
				     headers : {
				      'Content-Type' : 'application/json'
				     }
				   };
				   var data = angular.toJson(user);
				    $http.put('modifyAd', data, config).success(
				    function(data, status, headers, config) {
				      deferred.resolve(data);
				     }).error(function(data, status, headers, config) {
				      deferred.reject();
				    });
				     return deferred.promise;
				   }*/
			 obj.adPost = function (addPost, arr) {
		            var deferred = $q.defer();
		            var fd = new FormData();
		            fd.append('video', addPost.video);
		            // appending multiple files in form data(KEY should be array type)
		            for (var i = 0; i < arr.length; i++) {
		                fd.append('images[]', arr[i]);
		            }
		            delete addPost.image;
		            console.log('postqwqw', addPost);
		            addPost.video = "";
		            fd.append('data', angular.toJson(addPost));
		            $http.post('modifyAd', fd, {
		                transformRequest: angular.identity,
		                headers: {'Content-Type': undefined}
		            }).success(function (data) {
		                deferred.resolve(data);
		                console.log(data, "sucess");
		            }).error(function (data) {
		                deferred.reject();
		                console.log(data, "error");
		            });
		            return deferred.promise;
		        }
			return obj;
	});
})();