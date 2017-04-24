(function () {
    angular.module('baypassionApp').directive('fileModel',
            ['$parse', function ($parse) {
                    return {
                        restrict: 'A',
                        link: function (scope, element, attrs) {
                            var model = $parse(attrs.fileModel);
                            var modelSetter = model.assign;
                            console.log("dir init");
                            element.bind('change', function () {
                                scope.$apply(function () {
                                    modelSetter(scope, element[0].files[0]);
                                });
                            });
                        }
                    };
                }]);
    angular.module('baypassionApp').directive('imageModel', ['$parse', function ($parse) {
            return {
                restrict: 'A',
                link: function (scope, element, attrs) {
                    var model = $parse(attrs.imageModel);
                    var isMultiple = attrs.multiple;
                    var modelSetter = model.assign;
                    element.bind('change', function () {
                        scope.$apply(function () {
                            if (isMultiple) {
                                modelSetter(scope, element[0].files);
                            } else {
                                modelSetter(scope, element[0].files[0]);
                            }
                        });
                    });
                }
            };
        }]);
    angular.module('baypassionApp').directive("imageDirective", function () {
        return {
            controller: function ($scope) {
                var toBeLoaded = 0;
                this.registerChild = function (childElem) {
                    toBeLoaded++;
                    console.log(toBeLoaded);
                };
                this.childLoaded = function (childElem) {
                    toBeLoaded--;
                    if (toBeLoaded == 0) {
                        jQuery('#image-gallery').lightSlider({
                            gallery: true,
                            item: 1,
                            thumbItem: 9,
                            slideMargin: 0,
                            speed: 500,
                            auto: true,
                            loop: true,
                            onSliderLoad: function () {
                                $('#image-gallery').removeClass('cS-hidden');
                            }
                        });
                    }
                    console.log(toBeLoaded);
                };
            }
        }
    });
    angular.module('baypassionApp').directive("imageDirectiveItem", function () {
        return {
            require: "^imageDirective",
            link: function (scope, element, attrs, imageDirectiveCtrl) {
                imageDirectiveCtrl.registerChild(element);
                element.bind("load", function () {
                    scope.$apply(function () {
                        imageDirectiveCtrl.childLoaded(element);
                    })
                })
            }
        }
    });

    angular.module('baypassionApp').directive('simpleSlider', ['$parse', function ($parse) {
            return {
                restrict: 'A',
                link: function (scope, element, attrs) {
                    console.log("init");
                    $(window).on("load", function () {
                        console.log("load");
                    });
                    element.bind('load', function () {
                        alert('image is loaded');
                    });

                }
            };
        }]);
    angular.module('baypassionApp').directive('shUpload', ['$parse', "$sce", function ($parse, $sce) {
            return {
                restrict: 'A',
                scope: {
                    shUpload: "=",
                    form: "=",
                    video: "=",
                    target: "@"
                },
                link: function (scope, element, attrs) {
                    scope.form[attrs.name] = {$error: {}};
                    var model = $parse("shUpload");
                    var modelSetter = model.assign;
                    console.log(scope.form);
                    scope.$watch("form.$submitted", function (newVal, oldVal) {
                        if (newVal) {
                            validateUpload();
                        }
                    });
                    function safeApply(fn) {
                        if (!scope.$$phase && !scope.$root.$$phase) {
                            scope.$apply(fn);
                        } else {
                            setTimeout(function () {
                                safeApply(fn);
                            }, 4200);
                        }
                    }
                    var invalidFlage = false;
                    function validateUpload() {
                        var files = element[0].files;
                        if (attrs.min && attrs.min.length > 0) {
                            var min = parseInt(attrs.min.trim());
                            if (files.length < min) {
                                if (min == 1) {
                                    scope.form[attrs.name].$error.required = true;
                                    scope.form.$setValidity("required", false);
                                } else {
                                    scope.form[attrs.name].$error.minFile = true;
                                    scope.form.$setValidity("minFile", false);
                                }
                                invalidFlage = true;
                            } else {
                                scope.form[attrs.name].$error.required = false;
                                scope.form[attrs.name].$error.minFile = false;
                                scope.form.$setValidity("required", true);
                                scope.form.$setValidity("minFile", true);
                            }
                        }
                        if (attrs.max && attrs.max.length > 0) {
                            var max = parseInt(attrs.max.trim());
                            if (files.length > max) {
                                scope.form[attrs.name].$error.maxFile = true;
                                scope.form.$setValidity("maxFile", false);
                                invalidFlage = true;
                            } else {
                                scope.form[attrs.name].$error.maxFile = false;
                                scope.form.$setValidity("maxFile", true);
                            }
                        }

                        for (var i = 0; i < files.length; i++) {
                            var name = files[i].name, fileSize = files[0].size / 1000;
                            if (attrs.minSize && attrs.minSize.length > 0) {
                                var minSize = parseInt(attrs.minSize.trim());
                                if (minSize > fileSize) {
                                    scope.form[attrs.name].$error.minFileSize = true;
                                    scope.form.$setValidity("minFileSize", false);
                                    invalidFlage = true;
                                } else {
                                    scope.form[attrs.name].$error.minFileSize = false;
                                    scope.form.$setValidity("minFileSize", true);
                                }
                            }
                            if (attrs.maxSize && attrs.maxSize.length > 0) {
                                var maxSize = parseInt(attrs.maxSize.trim());
                                if (maxSize < fileSize) {
                                    scope.form[attrs.name].$error.maxFileSize = true;
                                    scope.form.$setValidity("maxFileSize", false);
                                    invalidFlage = true;
                                } else {
                                    scope.form[attrs.name].$error.maxFileSize = false;
                                    scope.form.$setValidity("maxFileSize", true);
                                }
                            }
                            if (attrs.extn && attrs.extn.length > 0) {
                                var extn = attrs.extn.split(",");
                                var invalid = true;
                                for (var j = 0; j < extn.length; j++) {
                                    if (name.lastIndexOf(extn[j]) > 1) {
                                        invalid = false;
                                        break;
                                    }
                                }
                                if (invalid) {
                                    scope.form[attrs.name].$error.invalidFormate = true;
                                    scope.form.$setValidity("invalidFormate", false);
                                    invalidFlage = true;
                                } else {
                                    scope.form[attrs.name].$error.invalidFormate = false;
                                    scope.form.$setValidity("invalidFormate", true);
                                }
                            }
                        }

                        if (invalidFlage) {
                            element[0].value = "";
                            invalidFlage = false;
                            safeApply(angular.noop);
                            return;
                        }
                        safeApply(angular.noop);
                        if (attrs.multiple) {
                            safeApply(function () {
                                modelSetter(scope, element[0].files);
                            });
                        } else {
                            if (attrs.video && element[0].files[0]) {
                                var URL = window.URL || window.webkitURL;
                                var binaryData = [element[0].files[0]];
                                var fileURL = URL.createObjectURL(new Blob(binaryData, {type: "application/zip"}));
                                if (element[0].files[0]) {
                                    scope.video = true;
                                }
                                console.log($("#" + scope.target), "#" + scope.target, element[0].files[0]);
                                $("#" + scope.target).attr("src", fileURL);
                            }

                            safeApply(function () {
                                modelSetter(scope, element[0].files[0]);
                            });
                        }
                    }
                    element.bind('change', validateUpload);
                }
            };
        }]);
})();
