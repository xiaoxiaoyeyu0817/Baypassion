(function () {
    angular.module('baypassionApp').factory('commonService', function ($http, $q, $location) {
        var obj = {};
        var commonData = {
            stateId: null,
            adPost: null,
            categoryItemId: null,
            categoryId: null,
            selectedCategoryName: null,
            cityId: null,
            categoryItemIdAdPost: null,
            searchPost: null,
            searchKeyword: null,
            postDeleteStatus: null
        };
                var post = null;
                obj.getCityId = function () {
                    return commonData.cityId;
                }

                obj.setCityId = function (cityId) {
                    commonData.cityId = cityId;
                }
        obj.getPostDeleteStatus = function () {
            return post;
        }

        obj.setPostDeleteStatus = function (adPOst) {
            post = adPOst;
        }

        obj.setAdpost = function (adPost) {
            commonData.adPost = adPost;
        }
        obj.getAdpost = function () {
            return commonData.adPost;
        }
        /*setter getter for CategoryItemId*/

        obj.setCategoryItemId = function (categoryItemId) {
            commonData.categoryItemId = categoryItemId;
        }
        obj.getCategoryItemId = function () {
            return commonData.categoryItemId;
        }
        /*setter getter for CategoryId*/

        obj.setCategoryId = function (categoryId) {
            commonData.categoryId = categoryId;
        }
        obj.getCategoryId = function () {
            return commonData.categoryId;
        }
        /*setter getter for selectedCategoryItemName*/

        obj.setSelectedCategoryName = function (selectedCategoryName) {
            commonData.selectedCategoryName = selectedCategoryName;
        }
        obj.getSelectedCategoryName = function () {
            return commonData.selectedCategoryName;
        }

        obj.setCategoryItemIdAdPost = function (categoryItemIdAdPost) {
            commonData.categoryItemIdAdPost = categoryItemIdAdPost;
        }
        obj.getCategoryItemIdAdPost = function () {
            return commonData.categoryItemIdAdPost;
        }
        /*setter getter for data*/
        obj.setSearchPost = function (searchPost) {
            commonData.searchPost = searchPost;
        }
        obj.getSearchPost = function () {
            return commonData.searchPost;
        }
        obj.setSearchKeyword = function (searchKeyword) {
            commonData.searchKeyword = searchKeyword;
        }
        obj.getSearchKeyword = function () {
            return commonData.searchKeyword;
        }
        
        obj.setStateId = function (stateId) {
            commonData.stateId = stateId;
        }
        obj.getStateId = function () {
            return commonData.stateId;
        }

        /*function for getting all city*/
        obj.getAllCity = function (stateId) {
            var deferred = $q.defer();
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            $http.get('getState?stateId=' + stateId, config).success(
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