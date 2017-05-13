(function() {
	'use strict';
	angular
			.module('baypassionApp')
			.controller(
					'aggrementCtrl',
					[
							'$scope',
							'$uibModalInstance',
							'$location',
							function($scope, $uibModalInstance, $location) {
								/*
								 * siteNo=1, baypassion.com;siteNo=2,
								 * baypassion.net
								 */
								$scope.close = function(aggreementable) {

									if (window.location.hostname == "baypassion.com") {
										if (aggreementable) {
											$uibModalInstance.dismiss('ok');
											window
													.open(
															"http://baypassion.net?flag=1",
															"_blank");
										} else {
											$uibModalInstance.dismiss('cancel');
										}
									} else if (window.location.hostname == "baypassion.net") {
										if (aggreementable) {
											$uibModalInstance.dismiss('ok');
										} else {
											$uibModalInstance.dismiss('cancel');
											window.open(
													"http://baypassion.com",
													"_blank");
										}
									}
								};
							} ]);
	angular
			.module('baypassionApp')
			.controller(
					'baseCtrl',
					[
							"$scope",
							"$location",
							"$rootScope",
							"$uibModal",
							"$sessionStorage",
							"homeService",
							"commonService",
							"categoryService",
							function($scope, $location, $rootScope, $uibModal,
									$sessionStorage, homeService,
									commonService, categoryService) {
								$rootScope.routeParam = {};
								var param = fetchReloadParam($location, [
										"stateId", "cityId" ]);
								$rootScope.logout = function() {
									delete $sessionStorage['user'];
									$rootScope.showLogin = true;
									$location.path('/login');
								}

								$scope.chooseLoc = false;
								$scope.changeLng = false;
								$sessionStorage['cityId'] = null;
								$sessionStorage['stateId'] = null;

								$scope.categoriesInfo = {
									selectedCategory : "",
									selectedCategoryId : "",
									searchKeyword : ""
								};

								$scope.aggrementOpen = function() {
									var modalInstance = $uibModal.open({
										templateUrl : 'view/aggrement.html',
										controller : 'aggrementCtrl',
									});
								};
								$scope.clickState = function(state) {
									$sessionStorage['cityId'] = null;
									$location.path("/listLocation/stateId-"
											+ state.stateId);

								}

								$scope.clickCity=function(state, city)
								{
									$sessionStorage['stateId'] = state.stateId;
									$sessionStorage['cityId'] = city.cityId;
									$location.path("/listLocation/stateId-"
											+ state.stateId + "/cityId-"
											+ city.cityId)

								}

								$scope.init = function() {
									if (window.location.hostname == "baypassion.net") {
										function getURLParameter(name) {
											return decodeURIComponent((new RegExp(
													'[?|&]'
															+ name
															+ '='
															+ '([^&;]+?)(&|#|;|$)')
													.exec(location.search) || [
													null, '' ])[1].replace(
													/\+/g, '%20'))
													|| null;
										}
										var myFlag = getURLParameter('flag');
										if (myFlag === undefined || myFlag) {
											// do nothing
										} else {
											$scope.aggrementOpen();
										}
									}
								}
								$scope.filterCity = function(stateName, cities,
										search) {
									if (search) {
										var search = search.toLowerCase();
										var flag = false;
										if (stateName.toLowerCase()
												.lastIndexOf(search) != -1) {
											flag = true;
										} else {
											for (var i = 0; i < cities.length; i++) {
												if (cities[i].cityName
														.toLowerCase()
														.lastIndexOf(search) != -1) {
													flag = true;
													break;
												} else {
												}
											}
										}
									} else {
										flag = true;
									}
									return flag;
								}

								$scope.fetchCountries = function() {
									homeService
											.getAllCountry()
											.then(
													function(Countriesdata) {
														$scope.countries = Countriesdata;
													});
									$scope.show = false;
								}
								$scope.categories = [];
								categoryService.getAllCategory().then(
										function(Statedata) {
											$scope.categories = angular
													.copy(Statedata);
										});
								$scope.search = function() {
									angular
											.forEach(
													$scope.categories,
													function(value, key) {
														if (value.categoryName == $scope.categoriesInfo.selectedCategory) {
															$scope.categoriesInfo.selectedCategoryId = value.categoryId;
														}
													});
									$scope.cityId = commonService.getCityId()
											|| $scope.routeParam.cityId;
									categoryService
											.searchKeyword(
													$scope.categoriesInfo.selectedCategoryId,
													$scope.categoriesInfo.searchKeyword,
													$scope.cityId)
											.then(
													function(data) {
														commonService
																.setSearchPost(data);
														commonService
																.setSearchKeyword($scope.categoriesInfo.searchKeyword);
														commonService
																.setCategoryId($scope.categoriesInfo.selectedCategoryId);
														$rootScope
																.$broadcast(
																		'globalSearch',
																		{
																			post : data,
																			search : angular
																					.copy($scope.categoriesInfo.searchKeyword)
																		});
														$location
																.path("/searchPost");
													});
								}

							} ]);
})();