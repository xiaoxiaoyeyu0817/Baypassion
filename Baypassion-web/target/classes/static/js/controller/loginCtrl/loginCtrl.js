(function () {

    'use strict';

    angular
            .module('baypassionApp')
            .controller(
                    'loginCtrl',
                    [
                        "$scope",
                        "loginService",
                        "$location",
                        "$sessionStorage",
                        "$rootScope",
                        function ($scope, loginService, $location,
                                $sessionStorage, $rootScope) {
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
                                if (!$scope.user.email == ""
                                        && !$scope.user.password == "") {
                                    loginService
                                            .getLogin($scope.user)
                                            .then(
                                                    function (data) {
                                                        if (!data) {
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
                                                            $location.path('/demo');
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

                        }]);

})();
