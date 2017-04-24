(function () {
    'use strict';
    angular.module('baypassionApp').filter("trustUrl", ['$sce', function ($sce) {
            return function (recordingUrl) {
                if (typeof recordingUrl.name == 'string') {
                    return recordingUrl.name;
                } else {
                    if (recordingUrl) {
                return $sce.trustAsResourceUrl(recordingUrl);
                    } else {
                        return "";
                    }
                }
            };
        }
    ]);
})();