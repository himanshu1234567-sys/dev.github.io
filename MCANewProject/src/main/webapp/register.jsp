<% response.setHeader("Cache-Control", "no-cache");

//Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store");

//Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0);

//Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache");
//HTTP 1.0 backward enter code here
 %>
<%@ include file="navbar.html"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Register</title>
<link rel="preconnect " href="https://fonts.gstatic.com ">
<link
	href="https://fonts.googleapis.com/css2?family=Krona+One&display=swap "
	rel="stylesheet ">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    window.onbeforeunload = function() { return "You work will be lost."; };
   
</script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
* {
	margin: 0;
	padding: 0;
	font-family: 'Krona One', sans-serif;
}
</style>
<script >
	function validate(){
		var uname = document.getElementById("uname").value;
		var email = document.getElementById("email").value;
		var password = document.getElementById("password").value;
		var confirmpassword = document.getElementById("confirm").value;
		var pattern = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
		if (uname===""|| uname===null){
			
			alert("please fill the field");
			return false;
		}
		else if (!isNaN(uname))
			{
			alert("only char allowed");
			return false;
		
			}
	else if (email===""|| email===null){
			
			alert("please fill the field");
			return false;
		}
	else if (!email.match(pattern)){
		
		alert("email address is incorrect");
		return false;
	}
		
	else if (password===""|| password===null){
		
		alert("please fill the field");
		return false;
	}
else if (password.length<=8){
		
		alert("password is too short");
		return false;
	}
	
	else if (confirmpassword===""|| confirmpassword===null){
		
		alert("please fill the field");
		return false;
	}
	
else if (password!=confirmpassword){
		
		alert("password are not same");
		return false;
	} 


	}
	
	</script>
	<style>
	.container{
	box-sizing: 50%;
	 
	}
	</style>

</head>
<body >
<div id = "login">
	<div class="form-container bg-primary">
		<div class="row justify-content-center bg-info " style="width: 70%;padding-left:400px; height: 80% ; ">

			<div class="container bg-dark "style="padding-top: 10px" >
					<div class="card-header bg-warning">Register</div>
					<div class="card-body bg-info">

						<form id="form" class="form-horizontal" method="post"  
							action="RegisterServlets"onsubmit="return validate()"> 

							<div class="form-group">
								<label for="name" class="cols-sm-2 control-label"> Name</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-user fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="uname" id="uname"
											placeholder="Enter your Name" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="cols-sm-2 control-label">
									Email</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope fa" aria-hidden="true"></i></span> <input
											type="text" class="form-control" name="email" id="email"
											placeholder="Enter your Email" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="cols-sm-2 control-label">Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="password"
											id="password" placeholder="Enter your Password" />
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="confirm" class="cols-sm-2 control-label">Confirm
									Password</label>
								<div class="cols-sm-10">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
											type="password" class="form-control" name="confirmpassword"
											id="confirm" placeholder="Confirm your Password" />
									</div>
								</div>
							</div>
							<div class="form-group ">
							
									<button class="btn btn-lg btn-primary btn-block"  type="submit">Sign up</button>
							</div>
							<div class="login-register">
								<a href="login.jsp">Login</a>
							</div>
							<div style="float: right;">
								<div class="login-register">
									<a href="login.jsp">Cancel</a>
								</div>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		</div>
	</div>

	<footer>
		<p class="text-center bg-dark text-white">@copyright
			Survive'sKit.com</p>
	</footer>

	<script
		src="https://cdn.tutorialjinni.com/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	<script>
		AOS.init({
			offset : 300,
			duration : 900
		});
	</script>

	<script type="text" src="custom.js"></script>

</body>
</html>