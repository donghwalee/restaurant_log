var app = angular.module('RestaurantApp', []);


// Header
app.controller('HeaderController', ['$http', function($http){
  var controller = this;
  // Get current user from route
  $http.get('/session').success(function(data){
    controller.current_user = data.current_diner;
  });
}]);


// Main
app.controller('RestaurantController', ['$http', '$scope', function($http, $scope){

  // token from DOM
  var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  var controller = this;


  //get restaurants
  var getRestaurants = function(){
    $http.get('/restaurants').success(function(data){
      controller.current_user_restaurants = data.restaurants;
    });
  };

  getRestaurants();

  // post to restaurants
  this.createRestaurant = function(){
    $http.post('/restaurants', {
      authenticity_token: token,
      restaurant: {
        name: this.newRestName,
        address: this.newRestLoc,
        dined_at: this.newRestDate,
        rating: this.newRestRating,
        comments: this.newRestComm
      }
    }).success(function(data){
      getRestaurants();
    });
  }
}]);
