var app = angular.module('RestaurantApp', []);

app.controller('HeaderController', ['$http', function($http){

  var controller = this;

  $http.get('/session').success(function(data){
    controller.current_user = data.current_diner;
    console.log(controller.current_user);
  });
}]);
