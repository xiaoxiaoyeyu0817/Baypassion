(function () {'use strict';
    angular.module('baypassionApp').controller('autoRepostCtrl',function ($scope, $location, autoRepostService)
    {
    	$scope.termOfUse = false;
    	$scope.location = $location.search().postId;
    	$scope.adPost={};
    	autoRepostService.getPostByAutoRepostId($scope.location).then(function (data)
        {
        	$scope.adPost = data;
        	console.log(data);
        	$scope.autoRepost.autoRepostId = angular.copy($scope.adPost.autoRepostId);
        	$scope.autoRepost.autoRepostAdCheck = angular.copy($scope.adPost.autoRepostAdCheck);
        	$scope.num = angular.copy($scope.adPost.initalNumber);
        	$scope.after = angular.copy($scope.adPost.afterHour);
        });
        
        $scope.autoRepost=
        {
        		listingEveryDays:"",
        		afterHour:"",
        		numberOfTimes:""
        }        	 
        
        $scope.autoRepostChk = function()
        {
        	$scope.autoRepost.autoRepostAdCheck = true;
        }
        
        $scope.continueAd = function()
        {
        	if($scope.autoRepost.autoRepostAdCheck == true && $scope.termOfUse == true)
        	{
        		autoRepostService.updatePostByAutoRepost($scope.autoRepost).then(function (data)
        		{
        			console.log("respose of webservice is : ",data);
        		});        		
        	}        	
        }
    });    		
})();