// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var facebookSetup = function(){
  $.ajaxSetup({ cache: true });
    $.getScript('//connect.facebook.net/en_US/sdk.js', function(){
      FB.init({
        appId: '1929445010619471',
        version: 'v2.7'
      });     
      $('#loginbutton, #feedbutton').removeAttr('disabled');
      FB.getLoginStatus(updateStatusCallback);
  });
};

var updateStatusCallback = function(){
  var uID = FB.getUserID();
  if(uID != undefined){
    var url    =  '/sessions' + "?&authenticity_token=" + encodeURIComponent(RAILS_AUTH_TOKEN);

    var method =  'POST';

    $.ajax({
      url: url,
      type: method,
      data: {id: uID},
      success: function() {
        console.log('Success!')
        },
      error: function() {
        console.log('Error!');
      }
    })
  }
};