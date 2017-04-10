(function () {
    angular.module('baypassionAdmin').config(['$routeProvider','$locationProvider', function ($routeProvider,$locationProvider) {
    	  $routeProvider.when('/login', {
              templateUrl: 'partials/login.html',
              controller : 'loginCtrl'
          }).when('/home', {
              templateUrl: 'partials/all-user.html',
              controller : 'adminCtrl'
          }).when('/postByAdmin', {
              templateUrl: 'partials/posted-by-admin.html',
              controller : 'adminCtrl'
          }).when('/allPost', {
              templateUrl: 'partials/all-post.html',
              controller : 'postAdCtrl'
          }).when('/modifyPost', {
              templateUrl: 'partials/editPost.html',
              controller : 'editCtrl'
          }).when('/contact', {
              templateUrl: 'view/contact.html',
          }).when('/manageAds', {
              templateUrl: 'view/manageAds.html',
              controller : 'manageAdsCtrl'
          }) .when('/adWords', {
              templateUrl: 'partials/adWords.html',
              controller : 'prohibitWordCtrl'
          }).when('/contactUs', {
              templateUrl: 'partials/contactUs.html',
              controller : 'contactUsCtrl'
          }).when('/postDetails/:postAd', {
              templateUrl: 'partials/postDetails.html',
              controller : 'viewPostDetailCtrl'              
          }) .otherwise({
              redirectTo: 'partials/all-post.html'
          });          
        }]).run(function ($sessionStorage, $http, $rootScope, $location) {
            $http.defaults.headers.common['Content-Type'] = 'application/json';
            if($location.path()==""){
            	$location.path("/login");                	
            }
            
            $rootScope.$on("$locationChangeStart", function (event, next, current) {                
                if (next.lastIndexOf("#/") < 0) {                	
                    event.preventDefault();
                    return false;
                }              
            });
        });
})();