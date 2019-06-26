<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

<script>
	jQuery(document).ready(function($) {

		$("#loginform").submit(function(event) {

			alert("sdfklsflks")
			// Disble the search button
		//	enableSearchButton(false);

			// Prevent the form from submitting via the browser.
			//event.preventDefault();

			saveViaAjax();
alert("sdfdsf");

		});

	});

	function saveViaAjax() {

		var login= {}
		login["id"] = $("#id").val();
		login["name"] = $("#name").val();
		login["contact"] = $("#contact").val();
		alert(JSON.stringify(login));

		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "http://localhost:8080/login",
			data : JSON.stringify(login),
			dataType : 'json',
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				display(data);
			},
			error : function(e) {
				console.log("ERROR: ", e);
				display(e);
			},
			done : function(e) {
				console.log("DONE");
				enableSearchButton(true);
			}
		});

	}

	function enableSearchButton(flag) {
		$("#btn-search").prop("disabled", flag);
	}

	function display(data) {
		var json = "<h4>Ajax Response</h4><pre>"
				+ JSON.stringify(data, null, 4) + "</pre>";
		$('#feedback').html(json);
	}
</script>




<body>


	<div class="form">
		<form action="login" method="post"  id="loginform" enctype="application/json">
			<table>
				<tr>
					<td>Enter Your id</td>
					<td><input id="id" name="id" value="${data.id}" ></td>
				</tr>
				<tr>
					<td>Enter Your name</td>
					<td><input id="name" name="name" value="${data.name}" ></td>
				</tr>
				<tr>
					<td>Enter Your contact</td>
					<td><input id="contact" name="contact" value="${data.contact}" ></td>
				</tr>
				<td><input type="submit" value="Submit"></td>
			</table>
		</form>
	</div>
	
	<h2>status ${message}</h2>
	
	
	
	
	
	
	
</body>
</html>