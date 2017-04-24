 /* Controller for viewPost */
    angular.module('baypassionApp').controller('userPostListCtrl', ["param", "$scope", "adPostService", "commonService", "categoryService", "$rootScope", "$sessionStorage", "$location", "$http",
        function (param, $scope, adPostService, commonService, categoryService, $rootScope, $sessionStorage, $location, $http) {
    	var paramArr = ['userId'];
        angular.forEach(paramArr, function (value, key) {
            $scope[value] = $rootScope.routeParam[value] || param[value];
        });
        $scope.postad = [];
        $scope.paginationOpt = {
            currenPage: "",
            totlaItems: "",
            itemsPerPage: 75,
            maxSize: 15,
            rotate: true,
            boundaryLinks: true
        }
        adPostService.getAllPostByUserId($scope.userId).then(function (data) {
        $scope.postad = [];
        angular.forEach(data,function(value,key){
        	value.postedOn = value.postedOn.substring(0,12); // MMM dd,yyyy
        	this.push(value);
        },$scope.postad);
        if (data && angular.isArray(data)) {
            $scope.paginationOpt.totlaItems = $scope.postad.length;
            $scope.currentPostads=[];
            $scope.postad.slice(0, $scope.paginationOpt.itemsPerPage - 1).forEach(function(ad){
            	var flag = false;
            	$scope.currentPostads.forEach(function(cAd){
            		if(cAd.postedOn == ad.postedOn){
            			cAd.ads.push(ad);
            			flag=true;
            			return;
            		}
            	});
            	if(!flag){
            		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
            	}
            	
            });
            console.log($scope.currentPostads);
        }
        });
        $scope.pageChanged = function () {
            var endIndex = (($scope.paginationOpt.currenPage) * $scope.paginationOpt.itemsPerPage);
            var startIndex = endIndex - $scope.paginationOpt.itemsPerPage;
            if ($scope.paginationOpt.totlaItems > endIndex) {
                endIndex -= 1;
                startIndex -= 1;
                if (startIndex < 0) {
                    startIndex = 0;
                }
                // $scope.currentPostads = $scope.postad.slice(startIndex,
				// endIndex);
                $scope.currentPostads=[];
                $scope.postad.slice(startIndex, endIndex).forEach(function(ad){
                	var flag = false;
                	$scope.currentPostads.forEach(function(cAd){
                		if(cAd.postedOn == ad.postedOn){
                			cAd.ads.push(ad);
                			flag=true;
                			return;
                		}
                	});
                	if(!flag){
                		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
                	}
                	
                });
                console.log($scope.currentPostads);
            } else {
                startIndex -= 1;
                // $scope.currentPostads = $scope.postad.slice(startIndex,
				// $scope.paginationOpt.totlaItems - 1);
                $scope.currentPostads=[];
                $scope.postad.slice(startIndex, $scope.paginationOpt.totlaItems - 1).forEach(function(ad){
                	var flag = false;
                	$scope.currentPostads.forEach(function(cAd){
                		if(cAd.postedOn == ad.postedOn){
                			cAd.ads.push(ad);
                			flag=true;
                			return;
                		}
                	});
                	if(!flag){
                		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
                	}
                	
                });
            }
        }
    }]);
    