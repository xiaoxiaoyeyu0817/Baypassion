(function () {
    'use strict';
    angular
            .module('baypassionApp')
            .controller(
                    'signupCtrl',
                    function ($scope, signupService, $location, $rootScope, $sessionStorage)
                    {
                        $scope.confirmEmailFlag = false;
                        $scope.confirmPasswordFlag = false;
                        $scope.user = {
                            firstName: "",
                            lastName: "",
                            email: "",
                            confirmEmail: "",
                            password: "",
                            confirmPassword: "",
                            isAdmin: "N"
                        }

                        $scope.signup = function () {
                            //condition which specify that if value is null then it will not submit blank data
                            if (!$scope.user.email == "" && !$scope.user.confirmEmail == "" && !$scope.user.password == "" && !$scope.user.confirmPassword == "") {
                                //condition for confirm email
                                if ($scope.user.email == $scope.user.confirmEmail) {
                                    $scope.confirmEmailFlag = false;
                                } else {
                                    $scope.confirmEmailFlag = true;
                                }
                                //condition for confirm password
                                if ($scope.user.password == $scope.user.confirmPassword) {
                                    $scope.confirmPasswordFlag = false;
                                } else {
                                    $scope.confirmPasswordFlag = true;
                                }
                                if ($scope.confirmPasswordFlag == false && $scope.confirmEmailFlag == false) {
                                    if ($scope.alreadyExists == false)
                                    {
                                        signupService.userSignup($scope.user).then(
                                                function (data) {
                                                    $sessionStorage.user = data;
                                                    setTimeout(function () {}, 300);
                                                    $location.path('/demo');
                                                });
                                    }

                                }
                            }
                        }
                        $scope.confirmEmailFlag = false;
                        $scope.confirmPasswordFlag = false;

                        //Verify email address
                        $scope.verifyEmail = function () {
                            signupService.verifyEmail($scope.user.email).then(
                                    function (data) {
                                        if (data) {
                                            $scope.alreadyExists = true;
                                        } else {
                                            $scope.alreadyExists = false;
                                        }
                                    });
                        }
                    });
})();