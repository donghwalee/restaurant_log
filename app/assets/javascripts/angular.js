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
  var token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  this.createRestaurant = function(){
    $http.post('/restaurants', {
      authenticity_token: token,
      restaurant: {
        name: "ABC Hard",
        rest_type: "Japanese",
        address: "NYC",
        dined_at: "11-11-2011",
        rating: 4,
        comments: "Great sushi"
      }
    }).success(function(data){
      console.log(data);
    });
  }
}]);
