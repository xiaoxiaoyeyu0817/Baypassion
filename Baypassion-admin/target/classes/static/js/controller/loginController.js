(function() {

	'use strict';

	angular.module('baypassionAdmin').controller('loginCtrl',["$scope","loginService","$location","$sessionStorage",
		function($scope, loginService, $location,$sessionStorage) 
		{
			
			$scope.user = {
							email : "",
							password : "",
							isAdmin :'Y'
						}
					$scope.login = function() 
					{
						if (!$scope.user.email == ""&& !$scope.user.password == "") 
						{
							if($scope.captchaResponse==null)
							{
				    			$scope.captchaError=true;
				    			return;
				    		}
							else
							{
				    			$scope.captchaError=false;
				    		}
								loginService.getLogin($scope.user).then(function(data) {
								if (!data) {
									$scope.authenticationError = "Invalid user Name or Password";
								} else {
									console.log("Login Successfully");
										$sessionStorage.user = {
												    userId : data.userId,
													email : data.email,
													password : data.password
											};
								setTimeout(function() {

								}, 300);
								$location.path('/home');
						}

					});						
					}
				}
			/*   GoogleCaptch   */
        	$scope.captchaResponse = null;
        	$scope.captchawidgetId = null;
        	$scope.captchaError = false;
        	$scope.captcha = 
        	{
        			key: '6LfjBx0UAAAAAD6l3QJp7bOnVRbfZHOUz8wkpRlZ'
        	};
        	$scope.setCaptchaResponse = function (response) 
        	{
        		$scope.captchaError = false;
        		$scope.captchaResponse = response;
        	};

        	$scope.setCaptchaWidgetId = function (widgetId) 
        	{
        		$scope.captchawidgetId = widgetId;
        	};

        	$scope.captchaExpiration = function () 
        	{
        		vcRecaptchaService.reload($scope.widgetId);
        		$scope.captchaResponse = null;
        	};
        	/*   GoogleCaptch   */
				
					} ]);
})();