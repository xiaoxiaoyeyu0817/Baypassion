(function () {

    'use strict';

    angular.module('baypassionApp').controller(
            'homeCtrl',
            ["$scope", "homeService", "commonService", "$location", "$rootScope", "$sessionStorage",
                function ($scope, homeService, commonService, $location, $rootScope, $sessionStorage) {
                    $scope.country = [];
                    homeService.getAllCountry().then(function (data) {
                        $scope.country = data[0];
                    });
                    $sessionStorage['cityId'] = null;
                	$sessionStorage['stateId'] = null;
                    $scope.listLocation = function (stateId, cityId) {
                    	$sessionStorage['cityId'] = cityId;
                    	$sessionStorage['stateId'] = stateId;
                    	commonService.setCityId(cityId);
                        $rootScope.routeParam.stateId = stateId;
                        $rootScope.routeParam.cityId = cityId;
                        $location.path("/listLocation/stateId-" + stateId + "/cityId-" + cityId);
                    }
                }]);

})();
