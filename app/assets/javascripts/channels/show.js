document.getElementById("show").addEventListener("click", function(){
  document.getElementById("form").style.display = 'block';
});

// document.getElementById("hide").addEventListener("click", function(){
//   document.getElementById("form").style.display = 'none';
// });

// function validateForm() {
//   var x = document.forms["payment"]["cardNumber"].value;
//   if (x == "") {
//     alert("Card Number must be filled out");
//     return false;
//   }
//   var y = document.forms["payment"]["cardExpiry"].value;
//   if (y == "") {
//     alert("Card Expiry Date must be filled out");
//     return false;
//  }
//   var z = document.forms["payment"]["cardCVC"].value;
//   if (z == "") {
//     alert("Card CVC must be filled out");
//     return false;
//  }
// }


var stripe = Stripe('pk_test_GKOdP1EAPXYLzsYoRP8k2LyC00MqaWhgci');
var elements = stripe.elements();



