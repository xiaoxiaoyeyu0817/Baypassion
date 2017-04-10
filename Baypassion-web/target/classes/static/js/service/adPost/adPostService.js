(function () {
    angular.module('baypassionApp').factory('adPostService', function ($http, $q) {
        var obj = {};
        var post = {};
        var multipaleCityData = {};
        var city = {};
        obj.setMultipaleCityData = function (data) {
            multipaleCityData = data;
        }

        obj.getMultipaleCityData = function () {
            return multipaleCityData;
        }

        obj.confirmPost = function (post_id) {
            var deferred = $q.defer();
            $http.get('checkEmailVerification?postId=' + post_id).success(function (data) {
                deferred.resolve(data);
                console.log(data, "sucess");
            }).error(function (data) {
                deferred.reject();
                console.log(data, "error");
            });
            return deferred.promise;
        }

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
            $http.post('saveAd', fd, {
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

        obj.getAllPostByCategoryItem = function (categoryItemId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('getAllPostByCategoryItem?categoryItemId=' + categoryItemId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.getAllCategoryItemByCategory = function (categoryId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('getCategory?categoryId=' + categoryId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.getAllPostByCityIdAndCategoryItemId = function (cityId, categoryItemId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('getAllPostByCityIdAndCategoryItemId?cityId=' + cityId + "&categoryItemId=" + categoryItemId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.getAllPostByUserId = function (userId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('userPost?userId=' + userId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.deletePostBypostId = function (postId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('deletePost?postId=' + postId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.editPost = function (addPost, imageArr, video) {
            var deferred = $q.defer();
            delete addPost.status;
            var fd = new FormData();
            if (video.length > 0) {
                fd.append('video', video[0]);
            }
            // appending multiple files in form data(KEY should be array type)
            for (var i = 0; i < imageArr.length; i++) {
                fd.append('images[]', imageArr[i]);
            }
            delete addPost.image;
            addPost.video = "";
            fd.append('data', angular.toJson(addPost));
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.post('saveAd', fd, {transformRequest: angular.identity,
                headers: {'Content-Type': undefined}}).success(
                    function (data) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });//*/
            return deferred.promise;//*/
        }

        obj.viewPostBypostId = function (postId) {
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

        obj.reportAd = function (reportReason)
        {
            var deferred = $q.defer();
            var config =
                    {
                        headers:
                                {
                                    'Content-Type': 'application/json'
                                }
                    };
            var data = angular.toJson(reportReason);
            $http.post('reportAd', data, config).success(
                    function (data, status, headers, config)
                    {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config)
            {
                deferred.reject();
            });
            return deferred.promise;
        }

        obj.setPostId = function (postId)
        {
            post = postId;
        }

        obj.getPostId = function ()
        {
            return post;
        }

        obj.verifyEmailByPostId = function (postId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };

            $http.get('emailVerification?postId=' + postId, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }
        obj.savePost = function (adPost) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            /*var fd = new FormData();            
             for (var i = 0; i < city.length; i++) {
             fd.append('city[]',city[i]);
             }            
             fd.append('adPostId',adPostId);
             $http.post('updatePostByNearByCity', fd, {
             transformRequest: angular.identity,
             headers: {'Content-Type': undefined}
             }).success(function (data) {                
             console.log(data, "sucess");
             }).error(function (data) {                
             console.log(data, "error");
             });*/
            /*$http({
             method: 'POST',
             url: '',
             data:{
             city: city,
             adPostId:adPostId
             }
             }).then(function successCallback(response) {
             console.log("sucess",response);
             }, function errorCallback(response) {
             console.log("error",response);
             });*/
            var data = angular.toJson(adPost);
            $http.post('updatePostByNearByCity', data, config).success(
                    function (data, status, headers, config) {
                        deferred.resolve(data);
                    }).error(function (data, status, headers, config) {
                deferred.reject();
            });
            return deferred.promise;
        }
        return obj;
    });
})();