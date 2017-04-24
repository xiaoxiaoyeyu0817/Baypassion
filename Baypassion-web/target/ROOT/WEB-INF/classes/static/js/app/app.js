(function () {
    angular.module('baypassionApp', ['sh', 'ngAnimate', 'ngRoute', 'ngSanitize', 'ngStorage', 'paypal-button', 'vcRecaptcha', 'ui.tinymce', 'dropzone','ui.bootstrap']);
})();

function setReloadParam(param, rootParam) {
    angular.forEach(param, function (value, key) {
        if (rootParam[key] && rootParam[key].length > 0) {
        } else {
            rootParam[key] = value;
        }
    });
}

function fetchReloadParam($location, reqParam) {
    var pathArr = $location.path().split("/");
    var pathObj = {
        haveReq: false
    };
    for (var i = 0; i < reqParam.length; i++) {
        var flage = false;
        for (var j = 2; j < pathArr.length; j++) {
            if (pathArr[j].lastIndexOf(reqParam[i]) >= 0) {
                flage = true;
                var temp = pathArr[j].split("-");
                if (temp[1]) {
                    pathObj[reqParam[i]] = temp[1];
                }
                break;
            }
        }
        if (flage) {
            pathObj.haveReq = true;
        } else {
            pathObj.haveReq = false;
        }
    }
    return pathObj;
}