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
app.controller('RestaurantController', ['$http', function($http){
  // token from DOM
  var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  var controller = this;
  //get restaurants
  $http.get('/restaurants').success(function(data){
    controller.current_user_restaurants = data.restaurants;
  });

  // post to restaurants
  this.createRestaurant = function(){
    $http.post('/restaurants', {
      authenticity_token: token,
      restaurant: {
        name: this.newRestName,
        rest_type: this.newRestType,
        address: this.newRestLoc,
        dined_at: this.newRestDate,
        rating: this.newRestRating,
        comments: this.newRestComm
      }
    }).success(function(data){
      console.log(data);
    });
  }
}]);
