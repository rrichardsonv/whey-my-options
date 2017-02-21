// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
loginRegisterListener = function(){
  $(".login-register").on("submit", "form" ,function(e) {
    e.preventDefault();
    var form = $(this)
    var formdata = $(this).serialize();
    var btn = $(this).find("input[type=submit]:focus" );

    if(btn.attr("id") == "login-submit") {
      console.log('login')
      $.ajax({
       method: 'post',
       url: '/sessions',
       data: formdata
      })
      .done(function(response) {
        console.log("woot",response);

      })
      .fail(function(error){
        console.error("Error: " + error);// + "\nWith status: " + status);
        debugger
      });
    } else {
      $.ajax({
        method: 'post',
        url: '/users',
        data: formdata
      })
      .done(function(response) {
        console.log("woot",response);
      })
      .fail(function(error){
        console.error("Error: " + error);
        debugger
         //+ "\nWith status: " + status);
      });
    }

  })
};