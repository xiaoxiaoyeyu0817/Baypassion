'use strict';

myapp.service('UsersService', function ($rootScope, $log, $resource, $http) {
    return {
        getAll: function () {
            var userResource = $resource('users', {}, {
                query: {
                    method: 'GET',
                    params: {},
                    isArray: true
                }
            });
            return userResource.query();
        },
        addUser: function (firstName, familyName, email, phone, login, password, roleId) {
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            var data = {
                'id': 0,
                'firstName': firstName,
                'familyName': familyName,
                'email': email,
                'phone': phone,
                'login': login,
                'password': password,
                'roleId': roleId
            }
            $http.post('users', data, config).success(function (data, status, headers, config) {
                $rootScope.successAddMsg = true;
            }).error(function (data, status, headers, config) {

            });
        },
        editUser: function (userId) {
            var userResource = $resource('users/' + userId, {}, {
                query: {
                    method: 'GET',
                    params: {
                        userId: userId
                    },
                    isArray: false
                }
            });
            return userResource.query();
        },
        updateUser: function (user) {
            var config = {
                headers: {
                    'Content-Type': 'application/json'
                }
            };
            var data = {
                'id': user.id,
                'firstName': user.firstName,
                'familyName': user.familyName,
                'email': user.email,
                'phone': user.phone,
                'login': user.login,
                'password': user.password,
                'language': user.language
            }
            $http.post('users', data, config).success(function (data, status, headers, config) {
                $rootScope.successUpdateMsg = true;
                var userResource = $resource('users', {}, {
                    query: {
                        method: 'GET',
                        params: {},
                        isArray: true
                    }
                });
                return userResource.query();
            }).error(function (data, status, headers, config) {

            });
        },
        deleteUser: function (userId) {
            var userResource = $resource('deleteUser/' + userId, {}, {
                query: {
                    method: 'GET',
                    params: {
                        userId: userId
                    },
                    isArray: true
                }
            });
            return userResource.query();
        },
        findAllLanguage: function () {
            var languageResource = $resource('findAllLanguage', {}, {
                query: {
                    method: 'GET',
                    params: {},
                    isArray: true
                }
            });
            return languageResource.query();
        },
        getAllRole: function () {
            var userResource = $resource('findAllRole', {}, {
                query: {
                    method: 'GET',
                    params: {},
                    isArray: true
                }
            });
            return userResource.query();
        }
    }
});