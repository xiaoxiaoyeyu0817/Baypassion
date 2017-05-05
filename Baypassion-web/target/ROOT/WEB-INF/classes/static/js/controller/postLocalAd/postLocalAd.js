(function() {

	'use strict';

	angular
			.module('baypassionApp')
			.controller(
					'postLocalAd',
					[
							"$scope",
							"postLocalAdService",
							"commonService",
							"$location",
							"$rootScope",
							"$sessionStorage",
							function($scope, postLocalAdService, commonService,
									$location, $rootScope, $sessionStorage) {
								if ($sessionStorage['cityId'] != null
										&& $sessionStorage['stateId'] != null) {
									$rootScope.routeParam.stateId = null;
									commonService
											.setStateId($sessionStorage['stateId']);
									commonService
									.setCityId($sessionStorage['cityId']);
									$location
											.path("/postAdd/stateId-"
													+ $sessionStorage['stateId']
													+ "/cityId-"
													+ $sessionStorage['cityId']
													+ "/catId-/catName-/subCat-/isMultiCity-false");
								} else {

									$scope.countries = [];
									postLocalAdService.getAllCountry().then(
											function(data) {
												$scope.countries = data;
												console.log(data);
											});
								}
								$scope.verify = function(stateId, cityId) {
									$rootScope.routeParam.stateId = null;
									commonService.setStateId(stateId);
									commonService.setCityId(cityId);
									$sessionStorage['cityId'] = cityId;
									$sessionStorage['stateId'] = stateId;
									$location
											.path("/postAdd/stateId-"
													+ stateId
													+ "/cityId-"
													+ cityId
													+ "/catId-/catName-/subCat-/isMultiCity-false");
								}
							} ]);

})();
