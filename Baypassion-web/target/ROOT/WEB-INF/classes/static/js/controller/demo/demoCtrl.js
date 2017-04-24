(function () {

    'use strict';

    angular.module('baypassionApp').controller(
            'demoCtrl',
            ["$scope", "$location", "$sessionStorage", "$rootScope", "adPostService", "demoService", "signupService", "commonService",
                function ($scope, $location, $sessionStorage, $rootScope, adPostService, demoService, signupService, commonService)
                {
                    $scope.userInfo = $sessionStorage['user'];
                    $scope.adPosts = [];
                    $scope.showPost = true;                    
                    $scope.numberOfPost = "";
                    $scope.postInfo = "";
                    if ($sessionStorage['user'] == null)
                    {
                        $location.path('/login');
                    } else
                    {
                        $rootScope.userName = $sessionStorage['user'].email;
                    }

                    adPostService.getAllPostByUserId($sessionStorage['user'].userId).then(function (data) {
                        $scope.adPosts = data;
                        if ($scope.adPosts.length == 0) {
                            $scope.showPost = false;
                        }
                        $scope.numberOfPost = $scope.adPosts.length;
                        angular.forEach($scope.adPosts, function (value, key) {
                            if (value.isDeleted == 1) {
                                $scope.adPosts[key].status = "Removed";
                            } else {
                                $scope.adPosts[key].status = "Live";
                            }
                        });

                    });
                    $scope.userPost = function (adPost)
                    {
                        commonService.setPostDeleteStatus(true);
                        demoService.setPost(adPost);
                        demoService.setPostId(adPost.adPostId);
                        $location.path('/manageAds');
                    }
                    $scope.editUser = function ()
                    {
                        if (!$scope.userInfo.firstName == "" && !$scope.userInfo.lastName == "" && !$scope.userInfo.contactNumber == "" && !$scope.userInfo.email == "")
                        {
                            demoService.modifyUserInfo($scope.userInfo).then(function (data)
                            {
                                if (data)
                                {
                                    $location.path('/demo');
                                }
                            });
                        }
                    }
                }
            ]);
})();

