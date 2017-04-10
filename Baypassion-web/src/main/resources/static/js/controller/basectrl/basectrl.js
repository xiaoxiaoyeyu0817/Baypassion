(function () {
    'use strict';
    angular.module('baypassionApp').controller('baseCtrl', function ($scope, $location, $rootScope, homeService, commonService, categoryService, $sessionStorage)
    {
        $rootScope.routeParam = {};
        var param = fetchReloadParam($location, ["stateId", "cityId"]);
        $rootScope.logout = function ()
        {
            delete $sessionStorage['user'];
            $rootScope.showLogin = true;
            $location.path('/login');
        }

        $scope.chooseLoc = false;
        $scope.changeLng = false;

        $scope.categoriesInfo = {
            selectedCategory: "",
            selectedCategoryId: "",
            searchKeyword: ""
        };

        $scope.filterCity = function (stateName, cities, search) {
            if (search) {
                var search = search.toLowerCase();
                var flag = false;
                if (stateName.toLowerCase().lastIndexOf(search) != -1) {
                    flag = true;
                } else {
                    for (var i = 0; i < cities.length; i++) {
                        if (cities[i].cityName.toLowerCase().lastIndexOf(search) != -1) {
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

        $scope.fetchCountries = function ()
        {
            homeService.getAllCountry().then(function (Countriesdata)
            {
                $scope.countries = Countriesdata;
            });
            $scope.show = false;
        }
        $scope.categories = [];
        categoryService.getAllCategory().then(function (Statedata)
        {
            $scope.categories = angular.copy(Statedata);
        });
        $scope.search = function ()
        {
            angular.forEach($scope.categories, function (value, key)
            {
                if (value.categoryName == $scope.categoriesInfo.selectedCategory)
                {
                    $scope.categoriesInfo.selectedCategoryId = value.categoryId;
                }
            });
            $scope.cityId = commonService.getCityId() || $scope.routeParam.cityId;
            categoryService.searchKeyword($scope.categoriesInfo.selectedCategoryId, $scope.categoriesInfo.searchKeyword, $scope.cityId).then(function (data) {
                commonService.setSearchPost(data);
                commonService.setSearchKeyword($scope.categoriesInfo.searchKeyword);
                commonService.setCategoryId($scope.categoriesInfo.selectedCategoryId);
                $rootScope.$broadcast('globalSearch', {post: data, search: angular.copy($scope.categoriesInfo.searchKeyword)});
                $location.path("/searchPost");
            });
        }
    });
})();