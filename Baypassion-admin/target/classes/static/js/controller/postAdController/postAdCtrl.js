(function() {
	'use strict';

	angular.module('baypassionAdmin').controller('postAdCtrl',["$scope","postAdService","$location","$ngBootbox",
			function($scope,postAdService,$location,$ngBootbox) {
		$scope.postAdId = [];
		$scope.addPostDetail = {};
		postAdService.getAllPostId().then(function(data){
			$scope.postAdId =data;
			console.log($scope.postAdId)
		})
		if(postAdService.getMessage()){
			$scope.msg = postAdService.getMessage();
			postAdService.setMessage("");
			
		}
			} ]);
	
	angular.module('baypassionAdmin').controller('viewPostDetailCtrl',["$scope","postAdService","$location","$ngBootbox",
		function($scope,postAdService,$location,$ngBootbox) {

		//$scope.location = $location.search('postAd');
		$scope.postId = $location.search().postId;
		postAdService.getAllPostDataById($scope.postId).then(function(data)
		{
            $scope.addPostDetail = data;
			postAdService.setPostData($scope.addPostDetail);
		});
	
		
	$scope.approvedPost = function(postId)
	{
		$ngBootbox.confirm('Are you sure want to Approve this post?').then(function() 
		{
			postAdService.approvePost(postId).then(function(data)
			{
				if(data)
				{
					$scope.IsVisible = 0;
					postAdService.setMessage("Post Approved");
					$location.path('/allPost')		
				}
			});
		},function() 
		{
			//Confirm was cancelled, don't delete customer
	        console.log('Confirm was cancelled');
	    });	
	};
	
	$scope.deletePost = function(postId){
		$ngBootbox.confirm('Are you sure delete this post?').then(function() 
				{
		postAdService.deletePost(postId).then(function(data)
				{
					if(data)
					{  
						postAdService.setMessage("Succesfully Deleted");
						$location.path("/allPost");
					}				
				});
	},
    function() 
	{
		//Confirm was cancelled, don't delete customer
		console.log('Confirm was cancelled');
    });	}
	/*$scope.deletePost = function(postId)
	{
		$ngBootbox.confirm('Are you sure delete this post?').then(function() 
		{
			postAdService.deletePost(postId[0]).then(function(data)
			{
				if(data)
				{
					var index = $scope.postAdId.indexOf(postId);					
					$scope.postAdId.splice(index,1);
					$scope.msg = "Succesfully Deleted";
							 //$location.path('/allPost');
				}				
			});
        },
        function() 
		{
			//Confirm was cancelled, don't delete customer
			console.log('Confirm was cancelled');
        });			  	
	};*/
		} ]);
})();