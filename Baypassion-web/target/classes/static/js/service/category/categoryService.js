(function () {
    angular.module('baypassionApp').factory(
            'categoryService',
            function ($http, $q) {
                var obj = {};
                var categoryName = "";
                var commanObj = {
                    category: "",
                    automotive: ""
                };

                obj.getAutomotive = function () {
                    return commanObj.automotive;
                }

                obj.setAutomotive = function (automotive) {
                    commanObj.automotive = automotive;
                }
                
                obj.getCategoryName = function () {
                    return categoryName;
                }

                obj.setCategoryName = function (categoryname) {
                	categoryName = categoryname;
                }

                obj.getCategory = function () {
                    return commanObj.category;
                }

                obj.setCategory = function (category) {
                    commanObj.category = category;
                }

                obj.getAllCategory = function () {
                    var deferred = $q.defer();
                    var config = {
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    };
                    var data = angular.toJson();
                    $http.get('getAllCategory', data, config).success(
                            function (data, status, headers, config) {
                                deferred.resolve(data);
                            }).error(function (data, status, headers, config) {
                        deferred.reject();
                    });
                    return deferred.promise;
                }
                obj.searchKeyword = function (categoryId, keyword, cityId) {
                    console.log(categoryId, keyword, cityId);
                    var deferred = $q.defer();
                    var config = {
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    };
                    $http.get('fetchPostByWordAndCategory?keyword=' + keyword + "&categoryId=" + categoryId + "&cityId=" + cityId, config).success(
                            function (data, status, headers, config) {
                                deferred.resolve(data);
                            }).error(function (data, status, headers, config) {
                        deferred.reject();
                    });
                    return deferred.promise;
                }
                obj.searchKeywordForCategoryItem = function (categoryItemId, keyword, cityId) {
                    console.log(cityId);
                    var deferred = $q.defer();
                    var config = {
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    };
                    $http.get('fetchPostByWordAndCategoryItem?keyword=' + keyword + "&categoryItemId=" + categoryItemId + "&cityId=" + cityId, config).success(
                            function (data, status, headers, config) {
                                deferred.resolve(data);
                            }).error(function (data, status, headers, config) {
                        deferred.reject();
                    });
                    return deferred.promise;
                }
                return obj;

            });
})();