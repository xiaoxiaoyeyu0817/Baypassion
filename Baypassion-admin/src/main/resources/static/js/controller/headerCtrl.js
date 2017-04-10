(function() {

	'use strict';

	angular.module('baypassionAdmin').controller('headerCtrl',["$scope","$location","$sessionStorage",
		function($scope, $location,$sessionStorage) 
		{					
		$scope.logout=function()
		{
			delete $sessionStorage['user'];						
			$location.path('/login');
		}
		if($sessionStorage['user']==null)
		{
			$location.path('/login');
		}
		} 
	]);
})();