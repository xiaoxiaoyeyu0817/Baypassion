(function () {
    'use strict';
    angular.module('baypassionApp').controller('manageAdsCtrl', function ($scope, $http, $location, $rootScope, $sessionStorage, demoService, adPostService, commonService, $sce) {
        $scope.adPosts = [];
        $scope.postId = 0;
        var selectedCity = [];
        $scope.cities = [];
        $scope.adPostId = demoService.getPostId();
        $scope.location = $location.search().postId;
        $scope.adPoststaus = commonService
                .getPostDeleteStatus();
        // $scope.adPost = demoService.getPost();
        $scope.adPost = {};
        if ($scope.location) {
            adPostService.verifyEmailByPostId($scope.location).then(function (data) {
                $scope.adPost = data;
                demoService.setPost($scope.adPost);
            });
        } else {
            $scope.adPost = demoService.getPost();
            console.log($scope.adPost);
        }
        commonService.getAllCity($scope.adPost.stateId).then(function (data) {
            $scope.cities = data.city;
            angular.forEach($scope.cities, function (cityValue, cityKey) {
                angular.forEach($scope.adPost.city, function (value, key) {
                    if (cityValue.cityId == value.cityId) {
                        $scope.cities[cityKey].isSelect = true;
                        $scope.allCityPrice = $scope.allCityPrice + value.cityPrice;
                    }
                });
            });
        });
        $scope.selectedCities = function () {
            selectedCity = [];
            angular.forEach($scope.cities, function (value, key)
            {
                if (value.isSelect)
                {
                    selectedCity.push(value.cityId);
                }
            });
            adPostService.setMultipaleCityData({selectedCity: selectedCity});
        }
        $scope.setCityData = function () {
            var multiCityData = adPostService.getMultipaleCityData();
            console.log(multiCityData);
            var temp = [];
            if (multiCityData.selectedCity && multiCityData.selectedCity.length > 0) {
                for (var i = 0; i < multiCityData.selectedCity.length; i++) {
                    var obj = {};
                    obj.cityId = multiCityData.selectedCity[i];
                    temp.push(obj);
                }
                $scope.adPost.city = temp;
            } else {
                if ($scope.isMultiCity == "true") {
                    $scope.isMultiCity = "false";
                }
            }
            return temp;
        }
        $scope.isSelected = false;
        $scope.saveAd = function () {
            console.log($scope.adPost);
            if ($scope.isSelected == true) {
                var city = $scope.setCityData();
                adPostService.savePost($scope.adPost).then(function (data) {
                    console.log(data);
                    $location.path("/viewNearByCity");
                });
            }
        }
        /*
         * if($scope.location == null) { $scope.postId
         * =$scope.adPostId;
         * demoService.getPostByPostId($scope.postId).then(function
         * (data){ $scope.adPost = data;
         * $scope.dzMethodsImage.init(); console.log(data); }); }
         * else { $scope.postId =$scope.location;
         * adPostService.verifyEmailByPostId($scope.postId).then(function
         * (data){ $scope.adPost = data;
         * $scope.dzMethodsImage.init(); console.log(data); }); }
         */
        /* tinymce */
        $scope.tinymceOptions = {
            menubar: false,
            statusbar: false,
            plugins: 'emoticons',
            toolbar: "undo redo | styleselect | bold underline italic | link image | alignleft aligncenter alignright | emoticons "
        };
        /* tinymce */

        /* dropzone */
        $scope.dzOptionsVideo = {
            url: '#',
            dictDefaultMessage: 'Add Videos.',
            acceptedFiles: 'video/*',
            parallelUploads: 1,
            maxFiles: 1,
            autoProcessQueue: false,
            dictRemoveFile: "Remove video"
        };

        $scope.dzMethodsVideo = {
            init: function () {
                if ($scope.adPost.video
                        && $scope.adPost.video.length > 0) {
                    var filePath = $scope.adPost.video;
                    var fileName = filePath.substr(filePath
                            .lastIndexOf('/') + 1,
                            filePath.length);
                    var myDropzone = $scope.dzMethodsVideo
                            .getDropzone();
                    var mockFile = {
                        name: fileName,
                        size: 1245,
                        accepted: true,
                        isUploaded: true
                    };
                    myDropzone.emit("addedfile", mockFile);
                    myDropzone.emit("complete", mockFile);
                    myDropzone.options.maxFiles = myDropzone.options.maxFiles - 1;// */
                }
            }
        };

        $scope.dzCallbacksVideo = {
            'addedfile': function (file) {
                setTimeout(
                        function () {
                            if (file.accepted) {
                                if (file.isUploaded) {

                                } else {
                                    var URL = window.URL
                                            || window.webkitURL;
                                    var binaryData = [file];
                                    var fileURL = URL
                                            .createObjectURL(new Blob(
                                                    binaryData,
                                                    {
                                                        type: "application/zip"
                                                    }));
                                    if (!$scope.$$phase
                                            && !$scope.$root.$$phase) {
                                        $scope
                                                .$apply(function () {
                                                    $scope.adPost.video = fileURL;
                                                });
                                    }
                                    // console.log($("#" +
                                    // scope.target), "#" +
                                    // scope.target,
                                    // element[0].files[0]);
                                    // reader.readAsDataURL(file);
                                }
                            } else {
                                $scope.dzMethodsVideo
                                        .removeFile(file);
                            }
                        }, 500);
            },
            removedfile: function (file) {
                if (file.accepted) {
                    if (file.isUploaded) {
                        if (!$scope.$$phase
                                && !$scope.$root.$$phase) {
                            $scope.$apply(function () {
                                $scope.adPost.video = "";
                            });
                        }
                        var myDropzone = $scope.dzMethodsVideo
                                .getDropzone();
                        myDropzone.options.maxFiles = myDropzone.options.maxFiles + 1;
                        console.log("remove file from Server");
                        // $http({
                        // method: 'GET',
                        // url: '/removeImage?imageId=' +
                        // file.imageId
                        // }).then(function
                        // successCallback(response) {
                        // console.log(response, "sucess");
                        // }, function errorCallback(response) {
                        // console.log(response, "error");
                        // });
                    } else {
                        if (!$scope.$$phase
                                && !$scope.$root.$$phase) {
                            $scope.$apply(function () {
                                $scope.adPost.video = "";
                            });
                        }
                    }
                } else {
                    console.log("remove file from Local");
                }
            },
            'error': function (file, xhr) {
                console
                        .warn('File failed to upload from dropzone 2.');
            }
        };

        $scope.dzOptionsImage = {
            url: '#',
            dictDefaultMessage: 'Add Images.',
            acceptedFiles: 'image/*',
            parallelUploads: 10,
            maxFiles: 10,
            autoProcessQueue: false,
            dictRemoveFile: "Remove Image"
        };

        $scope.dzMethodsImage = {
            init: function () {
                if ($scope.adPost.postImages
                        && $scope.adPost.postImages.length > 0) {
                    var myDropzone = $scope.dzMethodsImage
                            .getDropzone();
                    for (var i = 0; i < $scope.adPost.postImages.length; i++) {
                        var filePath = $scope.adPost.postImages[i].imageName;
                        var fileName = filePath.substr(filePath
                                .lastIndexOf('/') + 1,
                                filePath.length);
                        var mockFile = {
                            name: fileName,
                            size: 1245,
                            accepted: true,
                            imageId: $scope.adPost.postImages[i].imageId
                        };
                        myDropzone.emit("addedfile", mockFile);
                        myDropzone.emit("thumbnail", mockFile,
                                filePath);
                        myDropzone.emit("complete", mockFile);
                    }
                    var existingFileCount = $scope.adPost.postImages.length;
                    myDropzone.options.maxFiles = myDropzone.options.maxFiles
                            - existingFileCount;// */
                }
            }
        };

        $scope.dzCallbacksImage = {
            'addedfile': function (file) {
                setTimeout(function () {
                    if (file.accepted) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            file.base64 = e.target.result;
                        };
                        // reader.readAsDataURL(file);
                    } else {
                        $scope.dzMethodsImage.removeFile(file);
                    }
                }, 500);// */
            },
            removedfile: function (file) {
                if (file.accepted) {
                    if (file.imageId) {
                        var myDropzone = $scope.dzMethodsImage
                                .getDropzone();
                        myDropzone.options.maxFiles = myDropzone.options.maxFiles + 1;
                        $http(
                                {
                                    method: 'GET',
                                    url: '/removeImage?imageId='
                                            + file.imageId
                                })
                                .then(
                                        function successCallback(
                                                response) {
                                            console.log(
                                                    response,
                                                    "sucess");
                                        },
                                        function errorCallback(
                                                response) {
                                            console.log(
                                                    response,
                                                    "error");
                                        });
                    }
                } else {
                    console.log("remove file from Local");
                }
            },
            'error': function (file, xhr) {
                console
                        .warn('File failed to upload from dropzone 2.');
            }
        };
        /* dropzone */

        /* $scope.cityName = $scope.adPost.city.cityName; */
        $scope.moveTop = angular.copy($scope.adPost.moveAdToTop);
        $scope.RepostAd = angular.copy($scope.adPost.autoRepostAd);
        $scope.RepostAdAfter = angular.copy($scope.adPost.autoRepostAdAfter);
        $scope.numberTimes = angular.copy($scope.adPost.noOfTimes);
        $scope.numberWeek = angular.copy($scope.adPost.numberOfWeek);

        $scope.email = function () {
            var mailContent = {
                title: $scope.adPost.title,
                postDescription: $scope.adPost.description
            };
            demoService.setMailData(mailContent);
            $location.path('/emailFriend');
        }
        $scope.editPost = function () {            
            if ($scope.form.$valid) {
                adPostService.editPost($scope.adPost, $scope.dzMethodsImage.getAcceptedFiles(), $scope.dzMethodsVideo.getAcceptedFiles()).then(
                        function (data) {
                            console.log(data);
                            if (data && $scope.adPoststaus) {
                                $location.path('/demo');
                            } else {
                                $location.path('/adPost/stateId-/cityId-/catId-/catName-/subCat-/isMultiCity-false');
                            }
                        });
            }
        }

        $scope.renewPost = function () {
            $scope.adPost.isDeleted = 0;
            adPostService.editPost($scope.adPost).then(
                    function (data) {
                        if (data) {
                            $location.path('/demo');
                        }
                    });
        }


    });
})();