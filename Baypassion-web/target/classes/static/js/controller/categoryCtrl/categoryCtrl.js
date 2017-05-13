(function() {
	'use strict';
	angular
			.module('baypassionApp')
			.controller(
					'categoryCtrl',
					[
							"param",
							"$scope",
							"categoryService",
							"$location",
							"commonService",
							"$rootScope",
							"$sessionStorage",
							"$uibModal",
							function(param, $scope, categoryService, $location,
									commonService, $rootScope, $sessionStorage,
									$uibModal) {

								var paramArr = [ 'stateId', 'cityId', 'catId',
										'catName', 'subCat' ];
								angular
										.forEach(
												paramArr,
												function(value, key) {
													$scope[value] = $rootScope.routeParam[value]
															|| param[value];
												});
								$scope.categoryItems = [];
								$scope.IsVisible = false;
								$scope.cities = [];
								$scope.stateId = commonService.getStateId()
										|| $scope.stateId;
								categoryService.getAllCategory().then(
										function(data) {
											$scope.categories = data;
										});

								commonService.getAllCity($scope.stateId).then(
										function(data) {
											$scope.cities = data.city;
										});

								$scope.aggrementOpen = function() {
									var modalInstance = $uibModal.open({
										templateUrl : 'view/aggrement.html',
										controller : 'aggrementCtrl',
									});
								}

								$scope.ShowHide = function(obj) {
									$scope.currentObj = obj;
									$rootScope.routeParam.catId = obj.categoryId;
									$rootScope.routeParam.catName = obj.categoryName;
									categoryService
											.setAutomotive(obj.categoryName);
									$scope.IsVisible = $scope.IsVisible ? false
											: true;
								}

								$scope.viewPost = function(categoryItem,
										category) {
									$rootScope.routeParam.catId = category.categoryId;
									$rootScope.routeParam.catName = category.categoryName;
									$rootScope.routeParam.subCat = categoryItem.categoryItemId;
									$location.path("/viewPost/stateId-"
											+ $scope.stateId + "/cityId-"
											+ $scope.cityId + "/catId-"
											+ category.categoryId + "/catName-"
											+ category.categoryName
											+ "/subCat-"
											+ categoryItem.categoryItemId);
								}

								$scope.savePost = function(categoryItem,
										category) {
									$rootScope.subCatName = categoryItem.categoryItemName;
									$rootScope.routeParam.catId = category.categoryId;
									$rootScope.routeParam.catName = category.categoryName;
									$rootScope.routeParam.subCat = categoryItem.categoryItemId;

									if ($sessionStorage['cityId'] != null
											&& $sessionStorage['stateId'] != null) {
										$rootScope.routeParam.cityId = $sessionStorage['cityId'];
										$rootScope.routeParam.stateId = $sessionStorage['stateId'];
										$scope.stateId = $sessionStorage['stateId'];
										$scope.cityId = $sessionStorage['cityId'];
										$scope.catId = category.categoryId;
										$scope.catName = category.categoryName;
										$scope.subCat = categoryItem.categoryItemId;
										$location.path("/adPost/stateId-"
												+ $scope.stateId + "/cityId-"
												+ $scope.cityId + "/catId-"
												+ $rootScope.routeParam.catId
												+ "/catName-"
												+ $rootScope.routeParam.catName
												+ "/subCat-"
												+ $rootScope.routeParam.subCat
												+ "/isMultiCity-false");
									} else {
										$location
												.path("/postAddLocation/stateId-"
														+ $scope.stateId
														+ "/cityId-"
														+ $scope.cityId
														+ "/catId-"
														+ category.categoryId
														+ "/catName-"
														+ category.categoryName
														+ "/subCat-"
														+ categoryItem.categoryItemId);
									}

								}
								$scope.setCityId = function(cityId) {
									$rootScope.routeParam.cityId = cityId;
									$sessionStorage['cityId'] = cityId;
									$sessionStorage['stateId'] = $scope.stateId;
									$scope.cityId = $sessionStorage['cityId'];
									$scope.catId = category.categoryId;
									$scope.catName = category.categoryName;
									$scope.subCat = categoryItem.categoryItemId;

									$location.path("/adPost/stateId-"
											+ $scope.stateId + "/cityId-"
											+ cityId + "/catId-"
											+ $rootScope.routeParam.catId
											+ "/catName-"
											+ $rootScope.routeParam.catName
											+ "/subCat-"
											+ $rootScope.routeParam.subCat
											+ "/isMultiCity-false");
								}
							} ]);
})();