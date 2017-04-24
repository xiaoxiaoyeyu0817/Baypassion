(function () {
    'use strict';
    angular
            .module('baypassionApp')
            .controller(
                    'emailVerificationCtrl',
                    function ($scope, $location, $sessionStorage, $rootScope, adPostService)
                    {
                        $scope.location = $location.search().postId;
                        adPostService.verifyEmailByPostId($scope.location).then(function (data)
                        {
                            ;
                            $scope.postData = data;
                        });
                    });
})();