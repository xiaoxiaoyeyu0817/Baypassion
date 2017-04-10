(function () {

    'use strict';

    angular.module('baypassionApp').controller(
            'postLocalAd',
            ["$scope", "postLocalAdService", "commonService", "$location", "$rootScope", "$sessionStorage",
                function ($scope, postLocalAdService, commonService, $location, $rootScope, $sessionStorage)
                {
                    $scope.countries = [];
                    postLocalAdService.getAllCountry().then(function (data) {
                        $scope.countries = data;
                        console.log(data);
                    });

                    $scope.verify = function (stateId) {
                    	$rootScope.routeParam.stateId=null;
                        commonService.setStateId(stateId);
                        $location.path("/postAdd/stateId-"+stateId+"/cityId-/catId-/catName-/subCat-/isMultiCity-false");
                    }
                }]);

})();
