(function () {
    'use strict';
    angular
            .module('baypassionApp')
            .controller(
                    'changePasswordController',
                    function ($scope, changePasswordService, $location, $sessionStorage, $rootScope)
                    {                
                        $scope.user = {
                            oldPassword: "",
                            password: "",
                            confirmPassword: "",
                            userId: $sessionStorage.user.userId

                        }
                        console.log($sessionStorage.user.password);
                        $scope.verifyOldPassword = false;
                        $scope.confirmPasswordFlag = false;

                        $scope.checkEmail = function ()
                        {
                            if ($scope.user.oldPassword == $sessionStorage.user.password)
                            {
                                $scope.verifyOldPassword = false;
                            } else
                            {
                                $scope.verifyOldPassword = true;
                            }
                        }
                        $scope.verifyOldPassword = false;
                        $scope.changePassword = function ()
                        {
                            //condition which specify that if value is null then it will not submit blank data
                            if (!$scope.user.oldPassword == "" && !$scope.user.password == "" && !$scope.user.confirmPassword == "")
                            {
                                if ($scope.user.password != $scope.user.confirmPassword)
                                {
                                    $scope.confirmPasswordFlag = true;
                                } else
                                {
                                    $scope.confirmPasswordFlag = false;
                                }
                                if ($scope.confirmPasswordFlag == false)
                                {
                                    console.log("in if");
                                    changePasswordService.changePassword($scope.user).then(function (data) {
                                        $location.path('/login');
                                    });

                                }
                            }
                        }
                        $scope.confirmPasswordFlag = false;
                    });
})();