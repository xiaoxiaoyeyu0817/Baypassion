(function() {

	'use strict';

	angular
			.module('baypassionApp')
			.controller(
					'contactUsCtrl',["$scope","commonService","contactUsService",function($scope,commonService,contactUsService) {
						$scope.cities = [];
						if(commonService.getStateId()!=null){
							commonService.getAllCity(commonService.getStateId()).then(function(data){
								console.log(data);
								$scope.cities = data.city;
							});
						}
						else{
							contactUsService.getAllCity().then(function(data){
								console.log(data);
								$scope.cities = data;
							});
						}
						   $scope.contactUs = {
								   queryCategory:'',
								   location :'',
								   email:'',
								   confirmEmail:'',
								   message:'',
								   adTitleOrLink:''
						   }
						$scope.IsVisible=true;
						$scope.saveContactUs = function(){
							   console.log( $scope.contactUs);
							   contactUsService.saveContactUs($scope.contactUs).then(function(data){
								   console.log(data);
								   if (data) 
                                   {
                                   	$scope.IsVisible=false;
                                   	$scope.Successmsg="ContactUs email is has been sent successfully";
                                   }
							   });
						   }
 							} ]);

})();
