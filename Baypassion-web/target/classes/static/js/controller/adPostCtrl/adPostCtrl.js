(function () {

    'use strict';

    angular.module('baypassionApp').controller('adPostCtrl',
            function (param, $scope, $http, $location, $rootScope, commonService, adPostService, demoService, $sessionStorage, $filter, categoryService, $sce, $anchorScroll, $uibModal, dialog, vcRecaptchaService) {
                var paramArr = ['stateId', 'cityId', 'catId', 'catName', 'subCat', 'isMultiCity'];
                angular.forEach(paramArr, function (value, key) {
                    $scope[value] = $rootScope.routeParam[value] || param[value];
                });
                $scope.isMultiCity = param.isMultiCity;
                $scope.chooseLoc = true;
                $scope.changeLng = true;
                $scope.showPaypal = false;
                $scope.paymentDetails = null;
                $scope.numForCityCheck = 0;
                $scope.adPrice = "Free";
                $scope.numberTimes = 1.02;
                $scope.sponsePrice = 0;
                $scope.allCityPrice = 0.25;
                $scope.cityCount = 1;
                $scope.totalPrice = 0;
                $scope.loadedFiles = [];
                $scope.loadedVideo = false;
                var selectedCity = [];
                $scope.selectedAutomotive = $rootScope.routeParam.catName;
                $scope.selectedCategoryName = $rootScope.subCatName;
                $scope.minCityPirce = false;
                $scope.prohibitedWords = ["xxx", "sex"];
                $http({
                    method: 'GET',
                    url: 'prohibitWords'
                }).then(function successCallback(response) {
                    console.log(response);
                    if (response && angular.isArray(response.data)) {
                        var temp = [];
                        angular.forEach(response.data, function (value, key) {
                            temp.push(value.wordName);
                        });
                        console.log(temp);
                        $scope.prohibitedWords = temp;
                    }
                }, function errorCallback(response) {
                    console.log(response, "error");
                });

                $scope.paymentError = {
                    show: false,
                    error: ""
                };
                $scope.opts = {
                    env: 'sandbox',
                    client: {
                        sandbox: 'AWhnCjap1rFsMCMgk6XkxJozGawaDMOD3mILj4kniZwpvfIKvEvWLvyhjkp0Sws6vpZRZsa4Fo_YiERM',
                        production: 'AbuzRDU3C0EizkVpinvZFYWG21DJ4iMRIsIco7uFvO5y6sSoYQvQhxNLTPHT-BN63yaQklvyfK3yEJnT'
                    },
                    payment: function () {
                        var env = this.props.env;
                        var client = this.props.client;
                        return paypal.rest.payment.create(env, client, {
                            transactions: [
                                {
                                    amount: {total: $scope.totalPrice, currency: 'USD'}
                                }
                            ]
                        });
                    },
                    commit: true, // Optional: show a 'Pay Now' button in the
                    // checkout flow
                    onAuthorize: function (data, actions) {
                        // Optional: display a confirmation page here
                        return actions.payment.execute().then(function (paymentData) {
                            // Show a success page to the buyer
                            if (paymentData) {
                                dialog.alert({title: "Message", message: "Payment Done sucessfully."});
                                $scope.paymentError = {
                                    show: false,
                                    error: ""
                                }
                                $scope.paymentDetails = {
                                    id: paymentData.id,
                                    amount: paymentData.transactions[0].amount.total + " " + paymentData.transactions[0].amount.currency,
                                    status: paymentData.state,
                                    payer_email: paymentData.payer.payer_info.email
                                }
                            }
                        });
                    }
                };
                if (angular.isUndefined($sessionStorage["user"])) {
                    $scope.userId = ""
                } else {
                    $scope.userId = $sessionStorage["user"].userId;
                }

                $scope.confirmMailError = false;
                $scope.cities = [];
                if ($scope.stateId) {
                    commonService.getAllCity($scope.stateId).then(function (data) {
                        $scope.cities = data.city;
                        angular.forEach($scope.cities, function (value, key)
                        {
                            if (value.cityId == $scope.cityId)
                            {
                                value.isSelect = true;
                                value.isInitial = true;
                                $scope.allCityPrice = 0;
                                $scope.numberTimes = 1.02;
                                $scope.sponsePrice = 0;
                                $scope.price = 1.00;
                                $scope.countCity = 1;
                                if ($scope.isMultiCity == "false") {
                                    $scope.totalPrice = 0;
                                }
                            }
                        });
                    });
                }
                // setCategoryItemIdAdPost Category
                $scope.addPost = {
                    title: "",
                    description: "",
                    sellingPrice: "",
                    location: "",
                    mapLink: "",
                    zipCode: "",
                    emailId: "",
                    confirmEmail: "",
                    mobileNo: "",
                    mobileNotification: "",
                    displayOptions: false,
                    video: "",
                    image: [],
                    sponsorAd: "",
                    termOfUse: false,
                    postedOn: "",
                    numberOfWeek: "",
                    userId: "",
                    isDeleted: 0,
                    categoryItems: {
                        categoryItemId: $scope.subCat
                    },
                    city: [
                        {cityId: $scope.cityId}
                    ],
                    isEmailVerification: 'N',
                    autoRepost: {
                        autoRepostAdCheck: false,
                        listingEveryDays: "",
                        afterHour: "",
                        numberOfTimes: "",
                        initalNumber: ""
                    },
                    moveAd: {
                        moveAdToTopCheck: "",
                        nextPerHour: "1",
                        price: ""
                    }
                }

                if (!$scope.isLive) {
                    $scope.addPost.title = "";
                    $scope.addPost.description = "";
                    $scope.addPost.emailId = "email@email.com";
                    $scope.addPost.confirmEmail = "email@email.com";
                    $scope.addPost.termOfUse = true;
                }

                $scope.checkEmail = '';
                if (angular.isDefined($sessionStorage["user"])) {
                    $scope.checkEmail = $sessionStorage["user"].email
                    $scope.addPost.emailId = $scope.checkEmail;
                    $scope.addPost.confirmEmail = $scope.checkEmail;
                }

                $scope.cityPrice = 0.00;
                $scope.selectedCities = function () {
                    $scope.countCity = 0;
                    $scope.numberTimes = 1.02;
                    $scope.sponsePrice = 0;
                    selectedCity = [];
                    angular.forEach($scope.cities, function (value, key)
                    {
                        if (value.isSelect && key > 0)
                        {
                            $scope.numberTimes = $scope.numberTimes + 1.50;
                            $scope.sponsePrice = $scope.sponsePrice + 0.00;
                        }
                        if (value.isSelect)
                        {
                            selectedCity.push(value.cityId);
                            $scope.countCity = $scope.countCity + 1;
                        }
                    });
                    adPostService.setMultipaleCityData({selectedCity: selectedCity});
                    if ($scope.countCity == 1)
                    {
                        $scope.sponsePrice = 0.00;
                        $scope.allCityPrice = 0;
                        $scope.numberTimes = 1.02;
                        $scope.price = 1;
                    }
                    $scope.allCityPrice = ($scope.countCity - 1) * $scope.cityPrice;
                    if ($scope.allCityPrice > 0)
                    {
                        $scope.showAllCityPrice = true;
                    } else
                    {
                        $scope.showAllCityPrice = false;
                    }
                    $scope.price = $scope.countCity * $scope.addPost.moveAd.nextPerHour;
                    $scope.addPost.moveAd.price = $scope.price;
                }

                // check box for move to top

                $scope.price = 1.00;
                $scope.moveToTopChk = function ()
                {
                    $scope.addPost.moveAd.moveAdToTopCheck = true;
                    $scope.countCity = 0;
                    angular.forEach($scope.cities, function (value, key)
                    {
                        if (value.isSelect)
                        {
                            $scope.countCity = $scope.countCity + 1;
                        }
                    });
                    $scope.price = $scope.countCity * $scope.addPost.moveAd.nextPerHour;
                    $scope.addPost.moveAd.price = $scope.price;
                    $scope.allCityPrice = $scope.countCity * $scope.cityPrice;
                }
                // check box for auto repost ad

                $scope.autoRepostChk = function ()
                {
                    $scope.addPost.autoRepost.autoRepostAdCheck = true;
                }



                // check box for auto sponsor ad

                $scope.sponsorChk = function ()
                {
                    $scope.addPost.sponserAdCheck = true;
                }
                //

                $scope.continueChanges = function ()
                {
                    $scope.addPost.autoRepost.initalNumber = $scope.numberTimes;
                    $scope.price = $scope.countCity * $scope.addPost.moveAd.nextPerHour;
                    $scope.addPost.moveAd.price = $scope.price;
                    $scope.priceCopy = angular.copy($scope.price);
                    if ($scope.addPost.moveAd.moveAdToTopCheck == false) {
                        $scope.priceCopy = 0;
                    }

                    $scope.sponserPriceCopy = angular.copy($scope.sponsePrice);
                    if ($scope.addPost.sponserAdCheck == false) {
                        $scope.sponserPriceCopy = 0;
                    }
                    if ($scope.addPost.sponserAdCheck == true) {
                        $scope.sponserPriceCopy = angular.copy($scope.sponsePrice);
                    }
                    $scope.allCityPrice = ($scope.countCity - 1) * $scope.cityPrice;

                    if ($scope.addPost.autoRepost.autoRepostAdCheck)
                    {
                        $scope.totalPrice = parseFloat($scope.addPost.autoRepost.numberOfTimes) + $scope.allCityPrice + $scope.priceCopy + $scope.sponserPriceCopy;
                    } else {
                        $scope.totalPrice = $scope.allCityPrice + $scope.priceCopy + $scope.sponserPriceCopy;
                    }
                    console.log("post content are : ", $scope.addPost);
                    if ($scope.totalPrice == 0) {
                        $scope.totalPrice = "Free";
                    }
                }

                $scope.step = {
                    step1: {current: true, selectClass: "active", isDirt: true},
                    step2: {current: false, selectClass: "", isDirt: false},
                    step3: {current: false, selectClass: "", isDirt: false},
                    step4: {current: false, selectClass: "", isDirt: false}
                };

                $scope.editStep = function (step) {
                    if ($scope.step[step].isDirt) {
                        $scope.changeStep(step);
                    }
                }

                $scope.changeStep = function (step) {
                    angular.forEach($scope.step, function (value, key) {
                        $scope.step[key].current = false;
                    });
                    $scope.step[step].current = true;
                    $scope.step[step].selectClass = "active";
                }

                $scope.matchEmail = function () {
                    if ($scope.addPost.emailId === $scope.addPost.confirmEmail) {
                        $scope.form.$setValidity('emailConfirm', true);
                        $scope.confirmMailError = false;
                    } else {
                        $scope.form.$setValidity('emailConfirm', false);
                        $scope.confirmMailError = true;
                    }
                }

                /* continue function for nearbyCity page */
                $scope.continueAd = function () {
                    angular.forEach($scope.cities, function (value, key)
                    {
                        if (value.isSelect)
                        {
                            console.log(value.cityId);
                        }
                    });
                    console.log($scope.addPost.termOfUse);
                    console.log($scope.adPostObj.adPostId);
                    console.log($scope.allCityPrice);
                }
                $scope.setCityData = function () {
                    var multiCityData = adPostService.getMultipaleCityData();
                    console.log("data", multiCityData);
                    var temp = [];
                    if (multiCityData.selectedCity && multiCityData.selectedCity.length > 0) {
                        $scope.showPaypal = true;
                        for (var i = 0; i < multiCityData.selectedCity.length; i++) {
                            var obj = {};
                            obj.cityId = multiCityData.selectedCity[i];
                            temp.push(obj);
                        }
                        $scope.totalPrice = multiCityData.totalCost;
                        console.log($scope.totalPrice);
                        $scope.addPost.city = temp;
                    } else {
                        if ($scope.isMultiCity == "true") {
                            $scope.isMultiCity = "false";
                            $location.path("/choseSection");
                        }
                    }
                }
                $scope.setCityData();

                /*
                 var temp = parseFloat($scope.addPost.autoRepost.numberOfTimes) / $scope.numberTimes;
                 console.log((temp * 26) + "  times for $ " + $scope.totalPrice);
                 */

                $scope.saveAd = function (step) {
                    if (angular.isDefined($sessionStorage["user"])) {
                        if ($scope.captchaResponse == null && $scope.isLive) {
                            dialog.error({title: "Error", message: "Check Captch First."});
                            return;
                        }
                        $scope.addPost.userId = $sessionStorage["user"].userId;
                        if ($scope.showPaypal && $scope.isLive) {
                            if ($scope.paymentDetails != null) {
                                // $scope.addPost.paymentDetails=angular.copy($scope.paymentDetails);
                                console.log("adpost data-----", $scope.addPost);
                                adPostService.adPost($scope.addPost, $scope.dzMethods.getAcceptedFiles()).then(function (data) {
                                    $scope.changeStep(step);
                                    console.log(data, "sucess");
                                }, function (data) {
                                    console.log(data, "error");
                                });
                            } else {
                                dialog.error({title: "Error", message: "Make payment first."});
                            }
                        } else {
                            $scope.paymentError = {
                                show: false,
                                error: ""
                            };
                            $scope.paymentDetails = {
                                id: "",
                                amount: "",
                                status: "",
                                payer_email: ""
                            }
                            $scope.setCityData();
                            adPostService.adPost($scope.addPost, $scope.dzMethods.getAcceptedFiles()).then(function (data) {
                                $scope.changeStep(step);
                                commonService.setPostDeleteStatus(false);
                                demoService.setPostId(data);
                                if (data.adPostId) {
                                    $scope.postId = data.adPostId;
                                }
                            }, function (data) {
                                console.log(data, "error");
                            });
                        }
                    } else {
                        var modalInstance = $uibModal.open({
                            animation: true,
                            appendTo: angular.element(document.getElementById("bpPopupWrapper")),
                            templateUrl: "template/authDialog.html",
                            controller: 'authCtrl'
                        });
                        modalInstance.result.then(function (result) {
                            if (result == "loginSucess" || result == "signupSucess") {
                                $scope.saveAd('step3');
                            }
                        }, function (result) {
                            console.log("Model error");
                        });
                        console.log("reach");
                        // $location.path("/login");
                    }
                }
                $scope.adPostObj = demoService.getPostId();
                $scope.finalStep = function (step) {
                    adPostService.confirmPost($scope.postId).then(function (data) {
                        if (data || !$scope.isLive) {
                            $scope.changeStep(step);
                        } else {
                            dialog.error({title: "Error", message: "Verify email first."});
                        }
                    }, function (data) {
                        console.log(data, "error");
                    });

                }

                $scope.matchProhibitedWords = function (text) {
                    var obj = {
                        flag: false,
                        word: ""
                    }
                    if (text) {
                        text = text.replace(/<[^>]*>/ig, ' ').replace(/<\/[^>]*>/ig, ' ').replace(/&nbsp;|&#160;/gi, ' ').replace(/\s+/ig, ' ').trim().toLowerCase();
                        var words = $scope.prohibitedWords;
                        for (var i = 0; i < words.length; i++) {
                            if (text.lastIndexOf(words[i] + " ") == 0 || (text.lastIndexOf(" " + words[i]) > 0 && (text.lastIndexOf(" " + words[i]) == (text.length - (words[i].length + 1))))) {
                                obj.flag = true;
                                obj.word = words[i];
                                break;
                            }

                            if (text.lastIndexOf(words[i]) == 0 && (words[i].length == text.length)) {
                                obj.flag = true;
                                obj.word = words[i];
                                break;
                            }

                            if (text.lastIndexOf(" " + words[i] + " ") > 0) {
                                obj.flag = true;
                                obj.word = words[i];
                                break;
                            }
                        }
                    } else {
                        obj.flag = false;
                    }
                    return obj;
                }

                $scope.matchProhibited = function () {
                    var ProhibitedObj = $scope.matchProhibitedWords($scope.addPost.title);
                    $scope.titleProhibitedWord = ProhibitedObj.word;
                    if (ProhibitedObj.flag) {
                        $scope.titleProhibited = true;
                    } else {
                        $scope.titleProhibited = false;
                    }
                    ProhibitedObj = $scope.matchProhibitedWords($scope.addPost.description);
                    $scope.descriptionProhibitedWord = ProhibitedObj.word;
                    if (ProhibitedObj.flag) {
                        $scope.descriptionProhibited = true;
                    } else {
                        $scope.descriptionProhibited = false;
                    }
                    return $scope.titleProhibited || $scope.titleProhibited;
                }

                $scope.continue = function (step)
                {

                    if ($scope.isMultiCity == "false") {
                        $scope.continueChanges();
                    }

                    if ($scope.countCity > 1 && $scope.totalPrice < 1) {
                        $scope.minCityPirce = true;
                        return;
                    } else {
                        $scope.minCityPirce = false;
                    }

                    if ($scope.matchProhibited()) {
                        console.log("Prohibited");
                        return;
                    }

                    $scope.matchEmail();
                    if (!$scope.confirmMailError && $scope.form.$valid) {
                        $scope.step.step2.isDirt = true;
                        $scope.addPost.postedOn = $filter('date')(new Date(), 'MMM dd,yyyy hh:mm:ss a ');
                        if ($scope.totalPrice > 0) {
                            $scope.showPaypal = true;
                            $scope.adPrice = $scope.totalPrice;
                        } else {
                            $scope.showPaypal = false;
                        }
                        var files = $scope.dzMethods.getAcceptedFiles();
                        $scope.loadedFiles = [];
                        if (files) {
                            for (var i = 0; i < files.length; i++) {
                                $scope.loadedFiles.push(files[i].base64);
                            }
                        }
                        $scope.changeStep(step);
                    } else {
                        console.log("invalid");
                    }
                }

                /* GoogleCaptch */
                $scope.captchaResponse = null;
                $scope.captchawidgetId = null;
                $scope.captcha = {
                    key: '6LfjBx0UAAAAAD6l3QJp7bOnVRbfZHOUz8wkpRlZ'
                };
                $scope.setCaptchaResponse = function (response) {
                    console.info('Response available', response);
                    $scope.captchaResponse = response;
                };

                $scope.setCaptchaWidgetId = function (widgetId) {
                    console.info('Created widget ID: %s', widgetId);
                    $scope.captchawidgetId = widgetId;
                };

                $scope.captchaExpiration = function () {
                    console.info('Captcha expired. Resetting response object');
                    vcRecaptchaService.reload($scope.widgetId);
                    $scope.captchaResponse = null;
                };

                $scope.showImagePopup = function (data) {
                    console.log();
                    var modalInstance = $uibModal.open({
                        animation: true,
                        appendTo: angular.element(document.getElementById("bpPopupWrapper")),
                        templateUrl: "template/normal-popup.html",
                        controller: 'basicPopupCtrl',
                        resolve: {
                            modelData: function () {
                                return {
                                    isImage: data,
                                    content: "mak ",
                                }
                            }
                        }
                    });
                }
                /* dropzone */
                $scope.dzOptions = {
                    url: '#',
                    dictDefaultMessage: 'Add files to show dropzone methods (few)',
                    acceptedFiles: 'image/*',
                    parallelUploads: 10,
                    maxFiles: 10,
                    autoProcessQueue: false
                };

                $scope.dzMethods = {};

                $scope.dzCallbacks = {
                    'addedfile': function (file) {
                        setTimeout(function () {
                            if (file.accepted) {
                                var reader = new FileReader();
                                reader.onload = function (e) {
                                    file.base64 = e.target.result;
                                };
                                reader.readAsDataURL(file);
                            } else {
                                $scope.dzMethods.removeFile(file);
                            }
                        }, 500);
                    },
                    removedfile: function (file) {
                        if (file.accepted) {
                            console.log("remove file from server");
                        } else {
                            console.log("remove file from Local");
                        }
                    },
                    'error': function (file, xhr) {
                        console.warn('File failed to upload from dropzone 2.');
                    }
                };
                /* dropzone */
                /* tinymce */
                $scope.tinymceOptions = {
                    menubar: false,
                    statusbar: false,
                    plugins: 'emoticons',
                    toolbar: "undo redo | styleselect | bold underline italic | link image | alignleft aligncenter alignright | emoticons "
                };

                /* GoogleCaptch */
            });
    /* Controller for viewPost */
    angular.module('baypassionApp').controller('viewPostCtrl', ["param", "$scope", "adPostService", "commonService", "categoryService", "$rootScope", "$sessionStorage", "$location", "$http",
        function (param, $scope, adPostService, commonService, categoryService, $rootScope, $sessionStorage, $location, $http) {
            /*
             * Call API for getting all post By cityId and categoryItemId
             */
            var paramArr = ['stateId', 'cityId', 'catId', 'catName', 'subCat'];
            angular.forEach(paramArr, function (value, key) {
                $scope[value] = $rootScope.routeParam[value] || param[value];
            });
            $scope.postad = [];
            $scope.paginationOpt = {
                currenPage: "",
                totlaItems: "",
                itemsPerPage: 75,
                maxSize: 15,
                rotate: true,
                boundaryLinks: true
            }//bayPassion 31-3-17 4:00
            $scope.getAllPostByCity = function (cityId) {
                adPostService.getAllPostByCityIdAndCategoryItemId(cityId, $scope.subCat).then(function (data) {
                    $scope.postad = [];
                    angular.forEach(data,function(value,key){
                    	value.postedOn = value.postedOn.substring(0,11); //MMM dd,yyyy
                    	this.push(value);
                    },$scope.postad);
                    if (data && angular.isArray(data)) {
                        $scope.paginationOpt.totlaItems = $scope.postad.length;
                        $scope.currentPostads=[];
                        $scope.postad.slice(0, $scope.paginationOpt.itemsPerPage - 1).forEach(function(ad){
                        	var flag = false;
                        	$scope.currentPostads.forEach(function(cAd){
                        		if(cAd.postedOn == ad.postedOn){
                        			cAd.ads.push(ad);
                        			flag=true;
                        			return;
                        		}
                        	});
                        	if(!flag){
                        		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
                        	}
                        	
                        });
                        console.log($scope.currentPostads);
                    }
                });
            }


            $scope.pageChanged = function () {
                var endIndex = (($scope.paginationOpt.currenPage) * $scope.paginationOpt.itemsPerPage);
                var startIndex = endIndex - $scope.paginationOpt.itemsPerPage;
                if ($scope.paginationOpt.totlaItems > endIndex) {
                    endIndex -= 1;
                    startIndex -= 1;
                    if (startIndex < 0) {
                        startIndex = 0;
                    }
                    //$scope.currentPostads = $scope.postad.slice(startIndex, endIndex);
                    $scope.currentPostads=[];
                    $scope.postad.slice(startIndex, endIndex).forEach(function(ad){
                    	var flag = false;
                    	$scope.currentPostads.forEach(function(cAd){
                    		if(cAd.postedOn == ad.postedOn){
                    			cAd.ads.push(ad);
                    			flag=true;
                    			return;
                    		}
                    	});
                    	if(!flag){
                    		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
                    	}
                    	
                    });
                    console.log($scope.currentPostads);
                } else {
                    startIndex -= 1;
                    //$scope.currentPostads = $scope.postad.slice(startIndex, $scope.paginationOpt.totlaItems - 1);
                    $scope.currentPostads=[];
                    $scope.postad.slice(startIndex, $scope.paginationOpt.totlaItems - 1).forEach(function(ad){
                    	var flag = false;
                    	$scope.currentPostads.forEach(function(cAd){
                    		if(cAd.postedOn == ad.postedOn){
                    			cAd.ads.push(ad);
                    			flag=true;
                    			return;
                    		}
                    	});
                    	if(!flag){
                    		$scope.currentPostads.push({postedOn:ad.postedOn,ads:[ad]});
                    	}
                    	
                    });
                    console.log($scope.currentPostads);
                }
            }

            $scope.getAllPostByCity($scope.cityId);
            /* Call API for getting all post */
            $scope.viewAllPost = function () {
                adPostService.getAllPostByCategoryItem($scope.subCat).then(function (data) {
                    $scope.postad = data;
                });
            }

            /*
             * Call API for getting all category by category item
             */
            $scope.category = [];
            adPostService.getAllCategoryItemByCategory($scope.catId).then(function (data) {
                $scope.category = data;
            });

            /* Call API for getting All Cities By State Id */
            $scope.selectedCategory = commonService.getSelectedCategoryName();

            // $scope.stateId = commonService.getStateId();
            $scope.cities = [];
            commonService.getAllCity($scope.stateId).then(function (data) {
                $scope.cities = data.city;
            });
            $scope.titleDesciption = function (adPostId)
            {
                adPostService.setPostId(adPostId);
                $location.path('/titleDescription');
            }

// search function
            $scope.categoriesInfo =
                    {selectedCategoryId: "",
                        searchKeyword: ""
                    };

            $scope.search = function (category)
            {
                /* console.log(category); */
                angular.forEach(category.categoryItems, function (value, key)
                {
                    if (value.categoryItemName == $scope.selectedCategory)
                    {
                        $scope.categoriesInfo.selectedCategoryId = value.categoryItemId;
                    }
                });
                categoryService.searchKeywordForCategoryItem($scope.categoriesInfo.selectedCategoryId, $scope.categoriesInfo.searchKeyword, param.cityId).then(function (data)
                {
                    $scope.postad = data;
                });
            }

        }]);
    /* controller for serachPost */
    angular.module('baypassionApp').controller('searchPostCtrl', ["$scope", "adPostService", "categoryService", "commonService", "$rootScope", "$sessionStorage", "$location", function ($scope, adPostService, categoryService, commonService, $rootScope, $sessionStorage, $location) {
            /*
             * Call API for getting all post By cityId and
             * categoryItemId
             */
            $scope.categoriesInfoObj = {
                selectedCategoryItemId: "",
                searchKeywordCategoryItem: ""
            };
            $rootScope.$on('globalSearch', function (event, data) {
                $scope.searchPostad = data.post;
                $scope.categoriesInfoObj.searchKeywordCategoryItem = data.search;
            });

            $scope.categoryItemID = commonService.getCategoryItemId();
            $scope.searchPostad = [];
            $scope.viewAllSearchPost = function () {
                $scope.searchPostad = commonService.getSearchPost();
            }
            $scope.viewAllSearchPost();
            /*
             * Call API for getting all category by category item
             */
            $scope.categoryId = commonService.getCategoryId();
            $scope.categories = [];
            adPostService.getAllCategoryItemByCategory($scope.categoryId).then(function (data) {
                $scope.categories = data;
            });

            /* Call API for getting All Cities By State Id */
            $scope.categoriesInfoObj.searchKeywordCategoryItem = commonService.getSearchKeyword();
            $scope.stateId = commonService.getStateId();
            $scope.cities = [];
            commonService.getAllCity($scope.stateId).then(function (data) {
                $scope.cities = data.city;
            });
            $scope.titleDesciption = function (adPostId)
            {
                adPostService.setPostId(adPostId);
                $location.path('/titleDescription');
            }

            /* search function */
            $scope.searchPost = function (categoryObj) {
                angular.forEach(categoryObj.categoryItems, function (value, key) {
                    if (value.categoryItemName == $scope.selectedCategory)
                    {
                        $scope.categoriesInfoObj.selectedCategoryItemId = value.categoryItemId;
                    }
                });
                $scope.cityId = commonService.getCityId();
                categoryService.searchKeywordForCategoryItem($scope.categoriesInfoObj.selectedCategoryItemId, $scope.categoriesInfoObj.searchKeywordCategoryItem, $scope.cityId).then(function (data) {
                    $scope.searchPostad = data;
                });
            }
        }]);
})();