(function() {

	'use strict';

	angular.module('baypassionAdmin').controller(
			'prohibitWordCtrl',
			[
					"$scope",
					"prohibitWordService",
					"$route",
					function($scope, prohibitWordService, $route) {

						$scope.prohibitWord = {
							wordName : '',
							isDeleted : '0'
						}
						$scope.prohibitWordList = [];
						$scope.getProhibitedWord = function() {
							prohibitWordService.getAdWords().then(
									function(data) {
										$scope.prohibitWordList = data;
									});
						}
						$scope.getProhibitedWord();
						$scope.saveWord = function() {
							if (!$scope.prohibitWord.wordName == '') {
								prohibitWordService.saveWord(
										$scope.prohibitWord).then(function() {
									console.log("succesfully");
									$route.reload();

								});
							}
						}
						$scope.editAdWord = function(prohibitWordId) {
							console.log(prohibitWordId);
							prohibitWordService.editAdWord(prohibitWordId).then(
									function(data) {
										console.log(data);
										$scope.prohibitWord = data
									});
						}

						$scope.deleteAdWord = function(prohibitWord) {
							prohibitWordService.deleteAdWord(prohibitWord.prohibitWordId).then(function(data)
									{	if(data)
										{
											var index = $scope.prohibitWordList.indexOf(prohibitWord);					
											$scope.prohibitWordList.splice(index,1);
											$scope.msg = "Succesfully Deleted";
													 //$location.path('/allPost');
										}				
									});
						}
					} ]);

})();
