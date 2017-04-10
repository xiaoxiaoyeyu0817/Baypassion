(function(){
	'use strict';
	
	angular.module('baypassionAdmin').controller('editCtrl', function($scope,$rootScope,postAdService,editService,$location){
		/*$scope.user = {};*/
		$scope.user = postAdService.getPostData();
		$rootScope.showMessage = false;
        $scope.loadedVideo = false;

		console.log($scope.user);
		$scope.selectedCheckBox =
		{
				moveTop:angular.copy($scope.user.moveAdToTop),
				repostAd:angular.copy($scope.user.autoRepostAd),
				repostAfter:angular.copy($scope.user.autoRepostAdAfter),
				times:angular.copy($scope.user.noOfTimes),
				weeks:angular.copy($scope.user.numberOfWeek)
		}
		
		$scope.modify=function()
		{
			console.log("out put data",$scope.user);
			editService.adPost($scope.user ,  $scope.dzMethods.getAcceptedFiles()).then(function(data) 
			{
				if (data) 
				{
					$location.path('/allPost');
					$rootScope.showMessage = true;
				}
			});
		}
		/* dropzone */
        $scope.dzOptions = {
            url: '#',
            dictDefaultMessage: 'Add files to show dropzone methods (few)',
            acceptedFiles: 'image/*',
            parallelUploads: 10,
            maxFiles: 10,
            autoProcessQueue: false
        };

        $scope.dzMethods = {};

        $scope.dzCallbacks = {
            'addedfile': function (file) {
                setTimeout(function () {
                    if (file.accepted) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            file.base64 = e.target.result;
                        };
                        reader.readAsDataURL(file);
                    } else {
                        $scope.dzMethods.removeFile(file);
                    }
                }, 500);
            },
            removedfile: function (file) {
                if (file.accepted) {
                    console.log("remove file from server");
                } else {
                    console.log("remove file from Local");
                }
            },
            'error': function (file, xhr) {
                console.warn('File failed to upload from dropzone 2.');
            }
        };
        /* dropzone */
		  /* dropzone */
        /* tinymce */
        $scope.tinymceOptions = {
        		 menubar: false,
                 statusbar: false,
            plugins: [
                'contextmenu','emoticons'
            ],
            toolbar: 'bold italic | alignleft aligncenter alignright alignjustify | backcolor emoticons',
            image_advtab: true,
        };
        /* tinymce */

	});
})();