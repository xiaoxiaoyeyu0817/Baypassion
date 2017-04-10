(function () {
    'use strict';
    angular.module('baypassionApp').controller('authCtrl', ["vcRecaptchaService", "$scope", "loginService", "$location", "$sessionStorage", "$rootScope", "signupService", "$uibModalInstance", function (vcRecaptchaService, $scope, loginService, $location, $sessionStorage, $rootScope, signupService, $uibModalInstance) {
            $scope.isLogin = false;
            $scope.user = {
                email: "",
                password: ""
            }
            $scope.login = function () {
                if ($scope.captchaResponse == null && $scope.isLive) {
                    $scope.captchaError = true;
                    return;
                } else {
                    $scope.captchaError = false;
                }//*/
                if (!$scope.user.email == "" && !$scope.user.password == "") {
                    loginService.getLogin($scope.user).then(
                            function (data) {
                                if (!data.email) {
                                    $scope.authenticationError = "Invalid user Name or Password";
                                } else {
                                    $sessionStorage.user = {
                                        userId: data.userId,
                                        email: data.email,
                                        password: data.password,
                                        firstName: data.firstName,
                                        lastName: data.lastName,
                                        contactNumber: data.contactNumber
                                    };
                                    setTimeout(function () { }, 300);
                                    $rootScope.showLogin = false;
                                    $rootScope.postAdd = false;
                                    $rootScope.changeLanguage = false;
                                    $uibModalInstance.close("loginSucess");
                                }
                            });
                }
            }

            /*   GoogleCaptch   */
            $scope.captchaResponse = null;
            $scope.captchawidgetId = null;
            $scope.captchaError = false;
            $scope.captcha = {
                key: '6LfddRkUAAAAALXtbsIT0lWCujLdu7uZVzN7Fp1v'
            };

            $scope.setCaptchaResponse = function (response) {
                $scope.captchaError = false;
                $scope.captchaResponse = response;
            };

            $scope.setCaptchaWidgetId = function (widgetId) {
                $scope.captchawidgetId = widgetId;
            };

            $scope.captchaExpiration = function () {
                vcRecaptchaService.reload($scope.widgetId);
                $scope.captchaResponse = null;
            };

            /*   GoogleCaptch   */

            $scope.confirmEmailFlag = false;
            $scope.confirmPasswordFlag = false;
            $scope.newUser = {
                firstName: "",
                lastName: "",
                email: "",
                confirmEmail: "",
                password: "",
                confirmPassword: "",
                isAdmin: "N"
            }

            if (!$scope.isLive) {
                $scope.newUser = {
                    firstName: "mahendra",
                    lastName: "patel",
                    email: "email@email.com",
                    confirmEmail: "email@email.com",
                    password: "12345678",
                    confirmPassword: "12345678",
                    isAdmin: "N"
                }
            }

            $scope.signup = function () {
                //condition which specify that if value is null then it will not submit blank data
                if (!$scope.newUser.email == "" && !$scope.newUser.confirmEmail == "" && !$scope.newUser.password == "" && !$scope.newUser.confirmPassword == "") {
                    //condition for confirm email
                    if ($scope.newUser.email == $scope.newUser.confirmEmail) {
                        $scope.confirmEmailFlag = false;
                    } else {
                        $scope.confirmEmailFlag = true;
                    }
                    //condition for confirm password
                    if ($scope.newUser.password == $scope.newUser.confirmPassword) {
                        $scope.confirmPasswordFlag = false;
                    } else {
                        $scope.confirmPasswordFlag = true;
                    }
                    if ($scope.confirmPasswordFlag == false && $scope.confirmEmailFlag == false && $scope.alreadyExists == false) {
                        signupService.userSignup($scope.newUser).then(
                                function (response) {
                                    console.log(response, "sucess");
                                    if (response.userId) {
                                        $sessionStorage.user = response;
                                        $rootScope.postAdd = false;
                                        $rootScope.changeLanguage = false;
                                        $rootScope.showLogin = false;
                                        $uibModalInstance.close("signupSucess");
                                    }
                                }, function (response) {
                            console.log(response, "error");
                        });
                    }
                }
            }
            $scope.confirmEmailFlag = false;
            $scope.confirmPasswordFlag = false;
            //Verify email address
            $scope.verifyEmail = function () {
                signupService.verifyEmail($scope.newUser.email).then(
                        function (data) {
                            if (data) {
                                $scope.alreadyExists = true;
                            } else {
                                $scope.alreadyExists = false;
                            }
                        });
            }
        }]);
})();
