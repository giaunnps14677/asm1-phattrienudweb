var app = angular.module('index',[]);
app.controller("index",function($scope){

    $scope.home=function(){
        $scope.page = '';
    }
    $scope.home=function(){
        $scope.page = 'home';
    };
    $scope.header=function(){
        $scope.page = 'header';
    };

    $scope.page = '';
    
    $scope.footer=function(){
        $scope.page = 'footer';
    };
});

        