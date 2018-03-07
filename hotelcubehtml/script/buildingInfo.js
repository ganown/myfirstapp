/// <reference path="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js" />

var myApp = angular
               .module("workBuildings", [])
               .controller("myHotelCubes", function ($scope, $log) {
    var hotelCubes = [
       {name:"Near Ballston Metro", address: "Fairfax Dr", city:"Arlington", state: "VA 22203"},
       {name:"New CenturyLink Bldg", address: "Sunrise Valley Dr", city:"Herndon", state: "VA 20171"}

    ];
    $scope.hotelCubes=hotelCubes;


    $scope.numberOfClicks=0;
    
$scope.showBuildingFloors = function(){
        $scope.numberOfClicks++;
    }

});
