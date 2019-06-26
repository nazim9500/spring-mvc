function validate() {
	var name = document.getElementById("name").value;
	if (name == '') {
		alert('Please enter a valid name.');
		return false;
	} else {
		return true;
	}
}

//
//$(document).ready(function() {
//	  var $form = $("#loginform");
//	  $form.on('submit', function(e) {
////		  alert("sdfsdfsd")
//	    e.preventDefault(); // stop default form submission 
//	    $.ajax({  // form submission via ajax
//	      url: $form.attr('login'), // form submission url
//	      type: 'POST', // request type
//	      dataType: 'json', // data type
//	      data: $form.serialize(), // get all data from the form
//	      
//	      
//	      success: function(result) {
//	    	  alert(result)
//	        console.log(result); // response back from server in case of success
//	      },
//	      error: function(xhr, resp, text) { // response back from server in case of failure 
//	        console.log(xhr, resp, text);
//	      }
//	    })
//	  });
//	});