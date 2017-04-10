(function () {

    'use strict';

    angular.module('baypassionApp').controller('previewAddCtrl',
            function ($scope, $rootScope, $location, commonService, $sessionStorage, adPostService) {
                $scope.adPost = commonService.getAdpost();
                var tempAdpost = null;
                $scope.addposts = {};
                $scope.saveAd = function () {
                    console.log('save...');
                    console.log($scope.adPost);
                    adPostService.adPost($scope.adPost).then(function (data) {
                        $location.path('/base');
                    });
                }

                $scope.editAd = function ()
                {
                    console.log('edit...');
                    $location.path('/adPost');
                }

                /*	$scope.editAddPost = function(post){
                 console.log('Edit..');
                 adPostService.adPost($scope.adPost).then(function(data) {
                 $location.path('/adPost');
                 commonService.setAdpost();
                 $scope.addposts = commonService.getAdpost();
                 });
                 }*/
            });
})();