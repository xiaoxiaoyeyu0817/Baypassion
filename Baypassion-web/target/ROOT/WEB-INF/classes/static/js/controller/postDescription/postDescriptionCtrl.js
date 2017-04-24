(function () {

    'use strict';

    angular.module('baypassionApp').controller('postDescriptionCtrl', function ($scope, $location, adPostService, demoService, $sessionStorage, $rootScope)
    {
        $scope.viewPostContent = {};
        $scope.postId = adPostService.getPostId();
        adPostService.viewPostBypostId($scope.postId).then(function (data) {
            $scope.viewPostContent = data;
            var temp = [];
            for (var i = 0; i < $scope.viewPostContent.postImages.length; i++) {
                temp.push({image: $scope.viewPostContent.postImages[i].imageName, id: i});
            }
            $scope.slides = temp;
        });

        $scope.myInterval = 5000;
        $scope.noWrapSlides = false;
        $scope.active = 2;

        $scope.setActive = function (idx) {
            $scope.active = idx;
        }

        $scope.reportAd = function (id) {            
            $location.path('/reportAd/'+id);
        }

        $scope.replyAd = function () {
            $location.path('/replyAd');
        }

        $scope.email = function () {
            var mailContent =
                    {
                        title: $scope.viewPostContent.title,
                        postDescription: $scope.viewPostContent.description
                    };
            demoService.setMailData(mailContent);
            $location.path('/emailFriend');
        }
    });
})();