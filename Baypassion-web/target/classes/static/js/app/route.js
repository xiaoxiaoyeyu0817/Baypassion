(function () {
    angular.module('baypassionApp').config(['$routeProvider', '$locationProvider', 'dropzoneOpsProvider', '$httpProvider', '$compileProvider', function ($routeProvider, $locationProvider, dropzoneOpsProvider, $httpProvider, $compileProvider) {
            var interceptor = ['$q', '$rootScope', function ($q, $rootScope) {
                    var service = {
                        'request': function (config, data, a) {
                            //angular.element(document.getElementById("loader")).css({display: "block"});
                            return config;
                        },
                        "response": function (config) {
                            //angular.element(document.getElementById("loader")).css({display: "none"});
                            return config;
                        },
                        "responseError": function (config) {
                            //angular.element(document.getElementById("loader")).css({display: "none"});
                            return config;
                        },
                        "requestError": function (config) {
                            //angular.element(document.getElementById("loader")).css({display: "none"});
                            return config;
                        }
                    };
                    return service;
                }
            ];
            //$locationProvider.html5Mode(true);
            $compileProvider.imgSrcSanitizationWhitelist(/^\s*(https?|ftp|file|blob):|data:image\//);
            $httpProvider.interceptors.push(interceptor);//*/

            $routeProvider.when('/listLocation/:stateId/:cityId', {
                templateUrl: 'view/listlocation.html',
                controller: 'categoryCtrl',
                resolve: {
                    param: function ($location, $rootScope) {
                        var param = fetchReloadParam($location, ["stateId", "cityId"]);
                        setReloadParam(param, $rootScope.routeParam);
                        return param;
                    }
                }
            }).when('/base', {
                templateUrl: 'view/home.html',
                controller: 'homeCtrl',
            }).when('/login', {
                templateUrl: 'view/login.html',
                controller: 'loginCtrl'
            }).when('/signup', {
                templateUrl: 'view/signup.html',
                controller: 'signupCtrl'
            }).when('/changePassword', {
                templateUrl: 'view/changePassword.html',
                controller: 'changePasswordController'
            }).when('/demo', {
                templateUrl: 'view/demo.html',
                controller: 'demoCtrl'
            }).when('/editUser', {
                templateUrl: 'view/editUser.html',
                controller: 'demoCtrl'
            }).when('/postAdd/:stateId/:cityId/:catId/:catName/:subCat/:isMultiCity', {
                templateUrl: 'view/postAdd.html',
                controller: 'categoryCtrl',
                resolve: {
                    param: function ($location, $rootScope) {
                        var param = fetchReloadParam($location, ["stateId", "cityId"]);
                        setReloadParam(param, $rootScope.routeParam);
                        return param;
                    }
                }
            }).when('/postAddLocation/:stateId/:cityId/:catId/:catName/:subCat', {
                templateUrl: 'view/postAddLocation.html',
                controller: 'categoryCtrl',
                resolve: {
                    param: function ($location, $rootScope) {
                        var param = fetchReloadParam($location, ["stateId", "cityId", "catId", "catName", "subCat"]);
                        setReloadParam(param, $rootScope.routeParam);
                        return param;
                    }
                }
            }).when('/adPost/:stateId/:cityId/:catId/:catName/:subCat/:isMultiCity', {
                templateUrl: 'view/write_post.html',
                controller: 'adPostCtrl',
                resolve: {
                    param: function ($location, $rootScope) {
                        var param = fetchReloadParam($location, ["stateId", "cityId", "catId", "catName", "subCat", "isMultiCity"]);
                        setReloadParam(param, $rootScope.routeParam);
                        return param;
                    }
                }
            }).when('/renewAds', {
                templateUrl: 'view/renewAds.html',
                controller: 'manageAdsCtrl'
            }).when('/postAnAd', {
                templateUrl: 'view/postAnAd.html',
                controller: ''
            }).when('/reportAd/:id', {
                templateUrl: 'view/reportAd.html',
                controller: 'reportAdCtrl'
            }).when('/replyAd', {
                templateUrl: 'view/replyPost.html',
                controller: 'replyPostCtrl'
            }).when('/postLocalAd', {
                templateUrl: 'view/postLocalAd.html',
                controller: 'postLocalAd'
            }).when('/viewPost/:stateId/:cityId/:catId/:catName/:subCat', {
                templateUrl: 'view/viewPost.html',
                controller: 'viewPostCtrl',
                resolve: {
                    param: function ($location, $rootScope) {
                        var param = fetchReloadParam($location, ["stateId", "cityId", "catId", "catName", "subCat"]);
                        setReloadParam(param, $rootScope.routeParam);
                        return param;
                    }
                }
            }).when('/titleDescription', {
                templateUrl: 'view/titleDescription.html',
                controller: 'postDescriptionCtrl'
            }).when('/previewAdd', {
                templateUrl: 'view/previewAdd.html',
                controller: 'previewAddCtrl'
            }).when('/manageAds', {
                templateUrl: 'view/manageAds.html',
                controller: 'manageAdsCtrl'
            }).when('/viewAds', {
                templateUrl: 'view/viewAds.html',
                controller: 'manageAdsCtrl'
            }).when('/deleteAds', {
                templateUrl: 'view/deleteAds.html',
                controller: 'manageAdsCtrl'
            }).when('/editAds', {
                templateUrl: 'view/editAds.html',
                controller: 'manageAdsCtrl'
            }).when('/viewNearByCity', {
                templateUrl: 'view/viewNearByCity.html'
            }).when('/emailFriend', {
                templateUrl: 'view/emailFriend.html',
                controller: 'emailFriend'
            }).when('/contact', {
                templateUrl: 'view/contact.html',
                controller: 'contactUsCtrl'
            }).when('/choseSection', {
                templateUrl: 'view/choseSection.html',
                controller: 'sectionCtrl'
            }).when('/emailVerification', {
                templateUrl: 'view/manageAds.html',
                controller: 'manageAdsCtrl'
            }).when('/deletePost', {
                templateUrl: 'view/deletePost.html',
            }).when('/searchPost', {
                templateUrl: 'view/searchPost.html',
                controller: 'searchPostCtrl'
            }).when('/nearbyCity', {
                templateUrl: 'view/nearbyCity.html',
                controller: 'manageAdsCtrl'
            }).when('/autoRepost', {
                templateUrl: 'view/autoRepost.html',
                controller: 'autoRepostCtrl'
            }).when('/help', {
                templateUrl: 'view/help.html',
                controller: ''
            }).when('/privacy', {
                templateUrl: 'view/privacy.html',
                controller: ''
            }).when('/termOfUse', {
                templateUrl: 'view/termOfUse.html',
                controller: ''
            }).when('/reportedAd', {
                templateUrl: 'view/viewAds.html',
                controller: 'reportAdsCtrl'
            }).when('/movePost', {
                templateUrl: 'view/movePost.html',
                controller: function ($scope, $http, $location, dialog) {
                    $http.get('getMoveAdDetails?moveAdId=' + $location.search().id).then(function (data) {
                        if (data.data) {
                            $scope.move = data.data;
                            console.log($scope.move);
                        } else {
                            console.log("no data found");
                        }
                    }, function (data) {
                        console.log("error", data);
                    });

                    $scope.placeMoveTop = function (valid) {
                        if (valid) {
                            $http({
                                method: 'POST',
                                url: 'updateMoveAdDetails',
                                data: $scope.move
                            }).then(function successCallback(response) {
                                console.log("sucess", response);
                                if (response) {
                                    dialog.alert({title: "Error", message: "Move to top done sucessfully."});
                                            }
                            }, function errorCallback(response) {
                                console.log("erroe", response);
                            });
                        }
                    }
                }
            });

            dropzoneOpsProvider.setOptions({
                url: '#',
                acceptedFiles: 'image/jpeg, images/jpg, image/png',
                addRemoveLinks: true,
                uploadMultiple: true,
                dictDefaultMessage: 'Click to add or drop photos',
                dictRemoveFile: 'Remove photo',
                dictResponseError: 'Could not upload this photo'
            });//105.83

            //$locationProvider.html5Mode(true);
        }]).run(function ($sessionStorage, $http, $rootScope, $location, $sessionStorage) {
        $rootScope.isLive = false;
        $http.defaults.headers.common['Content-Type'] = 'application/json';
//            $http.defaults.headers.common['Accept'] = 'application/json';       
        if ($location.path() == "") {
            $location.path("/base")
        }
        $rootScope.$on("$locationChangeStart", function (event, next, current) {
            if (next.lastIndexOf("#/") < 0) {
                event.preventDefault();
                return;
            }
            if ((next.lastIndexOf("#/demo")) > 0) {
                $rootScope.showUser = true;
                $rootScope.showLocation = true;
                $rootScope.showPostContent = false;
                $rootScope.postAdd = false;
            } else {
                $rootScope.postAdd = true;
                $rootScope.showUser = false;
                if ((next.lastIndexOf("#/base")) > 0) {
                    $rootScope.showLocation = true;
                    $rootScope.showPostContent = false;
                } else {
                    $rootScope.showLocation = false;
                    $rootScope.showPostContent = true;
                }
            }


            if ((next.lastIndexOf("#/base") > 0) || (next.lastIndexOf("#/login") > 0)) {
                $rootScope.showNavigationDrawer = false;
            } else {
                $rootScope.showNavigationDrawer = true;
            }

            if ($sessionStorage['user'] == null)
            {
                $rootScope.showLogin = false;
            } else
            {
                $rootScope.showLogin = true;
            }
        });
    });
})();