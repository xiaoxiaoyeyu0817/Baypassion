(function() {

    'use strict';

    angular.module('baypassionApp').controller('reportAdCtrl',
                    function($scope, $location, $sessionStorage, $rootScope, adPostService, vcRecaptchaService,$routeParams) {
        console.log($routeParams.id);
                        $scope.availableReason = {
                            illegalContent : "Inappropriate or Illegal Content",
                            spam : "Over Posted / Spam",
                            wrongCategory : "Wrong Category"
                        }
                        $scope.IsVisible = true;
                        $scope.reportReason = "";

                        /* GoogleCaptch */
                        $scope.captchaResponse = null;
                        $scope.captchawidgetId = null;
                        $scope.captchaError = false;
                        $scope.captcha = {
                            key : '6LfddRkUAAAAALXtbsIT0lWCujLdu7uZVzN7Fp1v'
                        };
                        $scope.setCaptchaResponse = function(response) {
                            $scope.captchaError = false;
                            $scope.captchaResponse = response;
                        };

                        $scope.setCaptchaWidgetId = function(widgetId) {
                            $scope.captchawidgetId = widgetId;
                        };

                        $scope.captchaExpiration = function() {
                            vcRecaptchaService.reload($scope.widgetId);
                            $scope.captchaResponse = null;
                        };
                        /* GoogleCaptch */
                        $scope.submitReport = function() {
                            if ($scope.reportReason == "") {
                                $scope.msg = "Please select from the list of violations below.";
                            } else {
                                $scope.msg = "";
                                if ($scope.captchaResponse == null && $scope.isLive) {
                                    $scope.captchaError = true;
                                    return;
                                } else {
                                    $scope.captchaError = false;
                                }
                                $scope.mailSender = {
                                    description : $scope.reportReason,
                                    id:$routeParams.id,
                                }
                                adPostService.reportAd($scope.mailSender).then(function(data) {
                                    if (data) {
                                        $scope.IsVisible = false;
                                        $scope.reportReason = "";
                                        vcRecaptchaService.reload($scope.widgetId);
                                        $scope.Successmsg = "Reported email is has been sent successfully";
                                    }
                                });
                            }
                        }
                    });

    /**
     * Controller for view reported ad.
     * 
     */
    angular.module('baypassionApp').controller('reportAdsCtrl',
                    [ "$scope", "$location", "reportedAdService", function($scope, $location, reportedAdService) {
                        $scope.location = $location.search().postId;
                        console.log("hii am in", $scope.location);
                        reportedAdService.getReportedAd($scope.location).then(function(data) {
                            $scope.adPost = data;
                        });

                    } ]);
})();