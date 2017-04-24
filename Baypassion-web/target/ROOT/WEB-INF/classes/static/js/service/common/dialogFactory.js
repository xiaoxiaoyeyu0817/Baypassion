/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

angular.module('sh', ['ui.bootstrap']);
angular.module("sh").factory("dialog", function ($uibModal) {
    var dialog = {};
    function open(options) {
        var modalInstance = $uibModal.open({
            animation: true,
            templateUrl: "template/noraml-popup.html",
            controller: 'basicPopupCtrl',
            size: options.size,
            resolve: {
                modelData: function () {
                    return options;
                }
            }
        });
        modalInstance.rendered.then(function () {
            (function ($) {
                var model = $("div.modal-dialog");
                var windowHig = $(window).height();
                if (model.height() > windowHig) {
                    model.css("margin-top", "10px");
                } else {
                    var temp = ((windowHig - model.height()) / 2);
                    model.animate({"margin-top": temp + "px"}, 400);
                }
            })(jQuery);
        });
        return modalInstance;
    }

    dialog.image = function (option) {
        var options = angular.extend({
            isImage: "test.jpg",
            message: "Data save sucessfully.",
            target: "shPopupWrapper"}, option);
        var modalInstance = open({
            isImage: options.isImage,
            message: options.message,
            size: options.size,
            target: options.target,
        });
        return modalInstance;
    }
    dialog.error = function (option) {
        var options = angular.extend({title: "Error", size: "sm",
            message: "Some error occured during operation.", titleClass: "label-danger",
            icon: false, target: "bpPopupWrapper"}, option);
        var modalInstance = open({
            title: options.title,
            icon: options.icon,
            titleClass: options.titleClass,
            size: options.size,
            target: options.target,
            ctrlBtn: [
                {callback: "ok", text: "OK", cssClass: "sh-dialog-ok"},
            ],
            isImage: "",
            isCtrl: true,
            message: options.message,
            status: ""
        });
        return modalInstance;
    }

    dialog.confirm = function (option) {
        var options = angular.extend({title: "Confirm", size: "sm",
            message: "Are you sure to do this operation.", titleClass: "label-warning",
            icon: false, target: "shPopupWrapper"}, option);
        var modalInstance = open({
            title: options.title,
            icon: options.icon,
            size: options.size,
            titleClass: options.titleClass,
            target: options.target,
            ctrlBtn: [
                {callback: "ok", text: "OK", cssClass: "sh-dialog-ok"},
                {callback: "cancel", text: "Cancle", cssClass: "sh-dialog-cancle"}
            ],
            isImage: "",
            isCtrl: true,
            message: options.message,
            status: ""
        });
        return modalInstance;
    }

    dialog.alert = function (option) {
        var options = angular.extend({title: "Message", size: "sm",
            message: "Operation done sucessfull.", titleClass: "label-primary",
            icon: false, target: "shPopupWrapper"}, option);
        var modalInstance = open({
            title: options.title,
            icon: options.icon,
            size: options.size,
            titleClass: options.titleClass,
            target: options.target,
            ctrlBtn: [
                {callback: "ok", text: "OK", cssClass: "sh-dialog-ok"},
            ],
            isImage: "",
            isCtrl: true,
            message: options.message,
            status: ""
        });
        return modalInstance;
    }

    return dialog;
});

angular.module("sh").controller('basicPopupCtrl', function ($scope, $uibModalInstance, modelData) {
    $scope.dialog = modelData;
    $scope.ok = function () {
        $uibModalInstance.close("ok");
    };
    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
    $scope.callFunction = function (callback) {
        if (angular.isFunction($scope[callback]))
            $scope[callback]();
    };
});