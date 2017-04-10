(function () {

    'use strict';

    angular.module('baypassionApp').controller('replyPostCtrl', function ($scope, $rootScope, $sessionStorage, adPostService, replyPostService)
    {
        $scope.confirmEmailFlag = false;			//	use for confirm email
        $scope.postId = adPostService.getPostId();	// getting post id

        //	need to display post title to reply end
        adPostService.viewPostBypostId($scope.postId).then(function (data)
        {
            $scope.viewPostContent = data;
            console.log(data.emailId);
            $scope.replyContent.receiverMailId = data.emailId;
        });
        //	need to display post title to reply end

        
        //	manage login logout functionality in ui part end
        $scope.replyContent =
                {
                    senderMailId: "",
                    confirmEmailId: "",
                    message: "",
                    receiverMailId : ""
                }
        $scope.reply = function ()
        {
            if (!$scope.replyContent.senderMailId == "" && !$scope.replyContent.confirmEmailId == "" && !$scope.replyContent.message == "" && !$scope.replyContent.receiverMailId == "")
            {
                if ($scope.replyContent.senderMailId == $scope.replyContent.confirmEmailId)
                {
                    $scope.confirmEmailFlag = false;
                } else
                {
                    $scope.confirmEmailFlag = true;
                }
                if ($scope.confirmEmailFlag == false)
                {
                	console.log($scope.replyContent);
                    replyPostService.replyPost($scope.replyContent).then(function (data)
                    {
                        console.log(data);
                    });
                }
            }
        };
        $scope.confirmEmailFlag = false;
    });
})();
