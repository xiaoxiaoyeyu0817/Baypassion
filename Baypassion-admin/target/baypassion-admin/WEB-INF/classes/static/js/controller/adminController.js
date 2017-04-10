(function() {
	'use strict';

	angular.module('baypassionAdmin').controller('adminCtrl',["$scope","adminService","$location","$sessionStorage",
			function($scope, adminService, $location, $sessionStorage) {
						adminService.fetchAllUser().then(function(data){
							if(data){
								angular.forEach(data,function(value, key) {
									  data[key].isOpen=false;
									});								
								$scope.users = data;	
							}							
						});
					
			} ]);
})();