// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var refillRestaurantsListener = function(){
  $("#page1").on("click","#refill-button", function(){
    getNearbyRestaurants();
  });
};

var getNearbyRestaurants = function(){
  var nearbyRestaurantPanes = handlePosition();
  $("#tinderslide ul").append(nearbyRestaurantPanes);
};

var handlePosition = function(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(sendPosition, noPosition);
  } else { 
    noPosition("Something went wrong with geolocation") 
  }
};

function sendPosition(position) {
    var geoData = position.coords;
    $.ajax({
        url: '/restaurants',
        type: 'GET',
        data: geoData,
    })
      .done(function(response) {
        return response;
    })
      .error(function(error){
        console.error("Error: ", error)
    });      
};

function noPosition(error) {
    console.error("Error: ", error);
    alert("Please enable GPS");
};
