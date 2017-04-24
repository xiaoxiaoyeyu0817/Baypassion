(function () {

    'use strict';

    angular.module('baypassionApp').controller('emailFriend', function ($scope, $rootScope, emailService, demoService, $sessionStorage)
    {
        var mailContent = demoService.getMailData();
        $scope.IsVisible = true;
        $scope.mailSender =
                {
                    senderMailId: "",
                    receiverMailId: "",
                    message: "",
                    title: mailContent.title,
                    description: mailContent.postDescription
                }
        $scope.send = function ()
        {
        	console.log($scope.mailSender.senderMailId);
        	if (!$scope.mailSender.senderMailId == "" && !$scope.mailSender.receiverMailId == "" && !$scope.mailSender.message == "")
            {
                emailService.sendMail($scope.mailSender).then(function (data)
                {
                    if (data)
                    {
                    	console.log(data);
                    	 $scope.IsVisible = false;
                        $scope.Successmsg = "Your email has been sent successfully";
                    }
                });
            }
        };
    });
})();
