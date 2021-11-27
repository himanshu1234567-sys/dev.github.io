<%response.setHeader("Cache-Control", "no-cache");

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
<title>LogIN</title>
<link rel="preconnect " href="https://fonts.gstatic.com ">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<style type="text/css">
@media ( min-width : 768px) {
	.omb_row-sm-offset-3 div:first-child[class*="col-"] {
		margin-left: 25%;
	}
}

.omb_login .omb_authTitle {
	text-align: center;
	line-height: 300%;
}

.omb_login .omb_socialButtons a {
	color: white;
	//
	In
	yourUse
	@body-bg
	opacity
	:
	0.9;
}

.omb_login .omb_socialButtons a:hover {
	color: white;
	opacity: 1;
}

.omb_login .omb_socialButtons .omb_btn-facebook {
	background: #3b5998;
}

.omb_login .omb_socialButtons .omb_btn-twitter {
	background: #00aced;
}

.omb_login .omb_socialButtons .omb_btn-google {
	background: #c32f10;
}

.omb_login .omb_loginOr {
	position: relative;
	font-size: 1.5em;
	color: #aaa;
	margin-top: 1em;
	margin-bottom: 1em;
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}

.omb_login .omb_loginOr .omb_hrOr {
	background-color: #cdcdcd;
	height: 3px;
	margin-top: 2px !important;
	margin-bottom: 2px !important;
}

.omb_login .omb_loginOr .omb_spanOr {
	display: block;
	position: absolute;
	left: 50%;
	top: -0.6em;
	padding: inherit;
	margin-left: -1.5em;
	background-color: white;
	width: 3em;
	text-align: center;
}

.input-group{
padding: 8px;
}

.omb_login .omb_loginForm .input-group.i {
	width: 5em;
	margin-top: 5px;
	padding: 8px;
}

.omb_login .omb_loginForm  .help-block {
	color: red;
}

@media ( min-width : 768px) {
	.omb_login .omb_forgotPwd {
		text-align: right;
		margin-top: 20px;
	}
}
</style>
<script >
	function validate(){
		var uname = document.getElementById("uname").value;
			var password = document.getElementById("password").value;
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
		
	else if (password===""|| password===null){
		
		alert("please fill the field");
		return false;
	}
else if (password.length<=8){
		
		alert("password is too short");
		return false;
	}
	
	

	}
	
	</script>

</head>
<body>
	<section>
	<div id ="login">
		<div class="container-fluid">
			<div class="omb_login">
				<h3 class="omb_authTitle">
					<a href="register.jsp">Sign up</a>
				</h3>
				<div class="row omb_row-sm-offset-3 omb_socialButtons">
					<div class="col-xs-4 col-sm-2">
						<a href="#" class="btn btn-lg btn-block omb_btn-facebook"> <i
							class="fa fa-facebook visible-xs"></i> <span class="hidden-xs">Facebook</span>
						</a>
					</div>
					<div class="col-xs-4 col-sm-2">
						<a href="#" class="btn btn-lg btn-block omb_btn-twitter"> <i
							class="fa fa-twitter visible-xs"></i> <span class="hidden-xs">Twitter</span>
						</a>
					</div>
					<div class="col-xs-4 col-sm-2">
						<a href="#" class="btn btn-lg btn-block omb_btn-google"> <i
							class="fa fa-google-plus visible-xs"></i> <span class="hidden-xs">Google+</span>
						</a>
					</div>
				</div>

				<div class="row omb_row-sm-offset-3 omb_loginOr">
					<div class="col-xs-12 col-sm-6 ">
						<hr class="omb_hrOr">
						<span class="omb_spanOr">or</span>
					</div>
				</div>

				<div class="row omb_row-sm-offset-3 ">
					<div class="col-xs-12 col-sm-6 padding:20px">
						<form id="form" class="omb_loginForm" action="LoginServlets" autocomplete="off"
							method="POST" onsubmit= "return validate()">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" class="form-control" id="uname" name="uname"
									placeholder="Name">
							</div>
							<span class="help-block"></span>

							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="password" class="form-control"id="password" name="password"
									placeholder="Password">
							</div>
							<span class="help-block">Password error</span>

							<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
						</form>
					</div>
				</div>
				<div class="row omb_row-sm-offset-3">
					<div class="col-xs-12 col-sm-3">
						<label class="checkbox"> <input type="checkbox"
							value="remember-me">Remember Me
						</label>
					</div>
					<div class="col-xs-12 col-sm-3">
						<p class="omb_forgotPwd">
							<a href="#">Forgot password?</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<footer>
		<p class="text-center bg-dark text-white ">@copyright
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