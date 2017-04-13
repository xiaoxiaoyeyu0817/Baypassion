(function () {
    'use strict';
    angular.module('baypassionApp').controller('sectionCtrl', function ($scope, $location, $rootScope, homeService, $sessionStorage, adPostService, commonService, dialog)
    {
        $scope.weeks = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52];
        var selectedCity = [];
        $scope.selectedWeek = "";
        $scope.discounts = [
            {week: 4, percent: 20, isSelect: false},
            {week: 12, percent: 33, isSelect: false},
            {week: 26, percent: 50, isSelect: false}
        ];
        $scope.selectedDiscount = "";
        $scope.totalCountryCost = 0;
        $scope.finalCost = 0;
        $scope.checkDiscount = function () {
            angular.forEach($scope.discounts, function (value, key) {
                value.isSelect = false;
            });
        }
        $scope.visible = {
            section: true,
            category: false,
            location: false
        }
        $scope.calculateCostByWeek = function () {
            $scope.selectedDiscount = "";
            $scope.checkDiscount();
            if ($scope.selectedWeek != "") {
                $scope.finalCost = $scope.totalCountryCost * parseFloat($scope.selectedWeek);
            } else {
                $scope.finalCost = $scope.totalCountryCost;
            }
        }
        $scope.calculateCostByDiscount = function (discount) {
            $scope.checkDiscount();
            discount.isSelect = true;
            $scope.selectedWeek = "";
            $scope.selectedDiscount = discount;
            var disc = parseInt(discount.percent);
            var cost = $scope.totalCountryCost * parseFloat(discount.week);
            $scope.finalCost = cost - ((cost * disc) / 100);
        }

        $scope.calculateCost = function () {
            selectedCity = [];
            var stateCost, countryCost;
            angular.forEach($scope.countries, function (country, key) {
                //console.log(country);
                countryCost = 0;
                angular.forEach(country.state, function (state, key) {
                    stateCost = 0;
                    angular.forEach(state.city, function (city, key) {
                        if (city.isSelect) {
                        	//0.7 for every city.
                            stateCost += .00;
                            selectedCity.push(city.cityId);
                        }
                    });
                    countryCost += parseFloat(stateCost.toFixed(2));
                    state.totalCost = parseFloat(stateCost.toFixed(2));
                });
                country.totalCost = countryCost.toFixed(2);
            });
            $scope.totalCountryCost = countryCost.toFixed(2);
            if ($scope.selectedWeek != "") {
                $scope.finalCost = $scope.totalCountryCost * parseInt($scope.selectedWeek);
            } else if ($scope.selectedDiscount != "") {
                var disc = parseInt($scope.selectedDiscount.percent);
                var cost = $scope.totalCountryCost * parseInt($scope.selectedDiscount.week);
                $scope.finalCost = cost - ((cost * disc) / 100).toFixed(3);
            } else {
                $scope.finalCost = $scope.totalCountryCost;
            }
            $scope.selectedCity = selectedCity;
        }

        $scope.setVisibility = function (visibleKey) {
            angular.forEach($scope.visible, function (value, key) {
                $scope.visible[key] = false;
            });
            $scope.visible[visibleKey] = true;
        }

        $scope.checkState = function (flage, array, country) {
            array.hasValue = false;
            if (flage) {
                array.isSelect = true;
            }
            angular.forEach(array.city, function (city, key) {
                city.isSelect = flage;
            });
            $scope.hasCountryVal(country);
            $scope.calculateCost();
        }

        $scope.checkCountry = function (array, flage) {
            angular.forEach(array.state, function (state, key) {
                angular.forEach(state.city, function (city, key) {
                    city.isSelect = flage;
                });
                state.isSelect = flage;
                state.hasValue = false;
            });
            array.hasValue = false;
            $scope.calculateCost();
        }

        $scope.checkAll = function (array, flage) {
            angular.forEach(array, function (country, key) {
                angular.forEach(country.state, function (state, key) {
                    angular.forEach(state.city, function (city, key) {
                        city.isSelect = flage;
                    });
                    state.isSelect = flage;
                    state.hasValue = false;
                });
                country.isSelect = flage
                country.hasValue = false;
            });
            $scope.calculateCost();
        }

        $scope.checkCity = function (flage, state, country) {
            var isAllSelect = true, isOneSelect = false;
            angular.forEach(state.city, function (city, key) {
                if (city.isSelect) {
                    isOneSelect = true;
                } else {
                    isAllSelect = false;
                }
            });
            if (isAllSelect) {
                state.isSelect = isAllSelect;
                state.hasValue = false;
            } else {
                state.isSelect = false;
                if (isOneSelect) {
                    state.hasValue = isOneSelect;
                } else {
                    state.hasValue = false;
                }
            }
            $scope.hasCountryVal(country);
            $scope.calculateCost();
        }

        $scope.hasCountryVal = function (country) {
            var hasValue = false, allSelect = true;
            angular.forEach(country.state, function (state, key) {
                if (state.hasValue) {
                    hasValue = true;
                }
                if (state.isSelect) {
                    hasValue = true;
                } else {
                    allSelect = false;
                }
            });
            //console.log(hasValue, allSelect);
            if (hasValue) {
                country.hasValue = true;
                if (allSelect) {
                    country.isSelect = true;
                    country.hasValue = false;
                } else {
                    country.isSelect = false;
                    country.hasValue = true;
                }
            } else {
                country.hasValue = false;
            }
        }

        $scope.continueToAdPost = function () {
            if (selectedCity.length < 1) {
                dialog.error({title: "Error", message: "Please select one or more locations."});
                return;
            }
            if ($scope.selectedWeek || $scope.selectedDiscount) {
            } else {
                dialog.error({title: "Error", size: "sm", message: "Please select one or more weeks."});
                return;
            }
            if ($scope.finalCost) {
                var temp = parseFloat($scope.finalCost);
                if (temp < 0.99) {
                    dialog.error({title: "Error", size: "md", message: "Please add upgrades to have a minimum purchase of $0.99."});
                    return;
                }
            }
            adPostService.setMultipaleCityData({totalCost: $scope.finalCost, selectedCity: selectedCity});
            $location.path("/adPost/stateId-/cityId-/catId-" + $rootScope.routeParam.catId + "/catName-" + $rootScope.routeParam.catName + "/subCat-" + $rootScope.routeParam.subCat + "/isMultiCity-true");
        }

        $scope.number = 52;
        $scope.getNumber = function (num) {
            return new Array(num);
        }

        $scope.selectCategory = function (category) {
            $scope.selectedCategory = category;
            $rootScope.routeParam.subCat = category.categoryItemId;
            $rootScope.subCatName = category.categoryItemName;
            commonService.setCategoryItemIdAdPost(category.categoryItemId);
            homeService.getAllCountry().then(function (Countriesdata) {
                $scope.countries = Countriesdata;
            });
            $scope.setVisibility('location');
        }

        $scope.selectSection = function (category) {
            $rootScope.routeParam.catId = category.categoryId;
            $rootScope.routeParam.catName = category.categoryName;
            $scope.selectedSection = category.categoryItems;
            $scope.setVisibility('category');
        }

        $scope.selectLocation = function () {
            console.log(" selectLocation ");
        }

    });
})();