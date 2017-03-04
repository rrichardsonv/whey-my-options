// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var refillRestaurantsListener = function(){
  $(document).on('click', '#refill-button',function(){
    getNearbyRestaurants();
  });
};

var getNearbyRestaurants = function(){
  var nearbyRestaurantPanes;
  handlePosition();

};

var appendRestaurantPanes = function(htmlResponse){
  $("#tinderslide ul").append(htmlResponse);
}

var handlePosition = function(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(sendPosition, noPosition);
  } else { 
    noPosition("Something went wrong with geolocation") 
  }
};

function sendPosition(position) {
    var geoData = {
      coords: {
        lat: position.coords.latitude,
        long: position.coords.longitude
      }
    }

    $.ajax({
        url: '/restaurants',
        type: 'GET',
        data: geoData,

        success: function(response) {
          console.log('Success!')
          appendRestaurantPanes(response);
          },
        error: function() {
          $('#notification-bar').text('An error occurred');
          }
    })
    //   .success(function(response) {
        
    // })
    //   .error(function(error){
    //     console.error("Error: ", error)
    // });      
};

function noPosition(error) {
    console.error("Error: ", error);
    alert("Please enable GPS");
};
