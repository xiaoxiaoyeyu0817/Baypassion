(function() {
	'use strict';
	angular
			.module('baypassionApp')
			.controller(
					'cityCtrl',
					[
							'param',
							'$scope',
							'$rootScope',
							'$location',
							'$sessionStorage',
							function(param, $scope, $rootScope,$location, $sessionStorage) {
								$scope.routeState = $rootScope.routeState;
								$scope.cities = $scope.routeState.city;
								$sessionStorage['cityId']=null;
								$scope.clickCity = function(city) {
									$sessionStorage['stateId'] = $scope.routeState.stateId;
									$sessionStorage['cityId'] = city.cityId;
									$location.path("/listLocation/stateId-"
											+ $scope.routeState.stateId
											+ "/cityId-" + city.cityId);
								}
							} ]);
})();