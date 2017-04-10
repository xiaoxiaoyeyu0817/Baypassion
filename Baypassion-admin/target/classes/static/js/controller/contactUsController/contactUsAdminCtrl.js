(function() {

	'use strict';

	angular.module('baypassionAdmin').controller('contactUsCtrl',
			[ "$scope", "contactUsAdminService", function($scope, contactUsAdminService) {

				$scope.contactUsList = [];
				contactUsAdminService.getAllContactUs().then(function(data) {
					console.log(data);
					$scope.contactUsList = data;
				});
				$scope.isVisible = 0;
				$scope.viewContactUsDetails = function(contactId){
					if($scope.isVisible != contactId){
						$scope.isVisible = contactId;}
					else{$scope.isVisible = 0;}}
				
			} ]);    
})();
