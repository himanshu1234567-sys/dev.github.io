<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
<link rel="stylesheet" href="styles.css">
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<meta name="viewport" content="weidth=device-width,initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>All Products</title>
<style>
.btn {
	display: inline-block;
	background: #ff523b;
	color: #fff;
	padding: 3px 40px;
	margin: 20px 20px;
	border-radius: 30px;
	transition: background 0.5s;
}

.btn:hover {
	background: #563434;
}

.single-product {
	margin-top: 80px;
}

.single-product .col-2 img {
	padding: 0;
}

.single-product .col-2 {
	padding: 15px
}

.single-product h3 {
	font-size: 20px;
}

.single-product h4 {
	margin: 10px;
	font-size: 20px;
	font-weight: bold;
}

.single-product select {
	display: block;
	padding: 10px;
	margin-top: 20px;
}

.single-product input {
	width: 40px;
	height: 40px;
	padding-left: 10px;
	font-size: 10px;
	margin-right: 10px;
	border: 1px solid #ff523b;
}

input:focus {
	outline: none;
}

.single-product .fa {
	color: #ff523b;
	margin-left: 10px;
}

.small-img-row {
	display: flex;
	justify-content: space-between;
}

.small-img-row {
	flex-basis: 20px;
	cursor: pointer;
}
</style>
</head>
<body>
	<header> <nav
		class="navbar navbar-expand-md navbar-dark bg-dark"> <a
		href="index.jsp" class="navbar-brand">Survive'Kit</a>
	<button type="button" class="navbar-toggler" data-toggle="collapse"
		data-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse justify-content-between"
		id="navbarCollapse">
		<div class="navbar-nav">
			<a href="index.jsp" class="nav-item nav-link  current">Home</a> <a
				href="profile.jsp" class="nav-item nav-link current ">Profile</a>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Products</a>
				<div class="dropdown-menu">
					<a href="ppekit.jsp" class="dropdown-item">PPE SUIT</a> <a
						href="sanitizer.jsp" class="dropdown-item">Sanitizer</a> <a
						href="mask.jsp" class="dropdown-item">Masks and Gloves</a>

				</div>

			</div>
		</div>

		<div class="navbar-nav">
			<a href="login.jsp" class="nav-item nav-link">Login</a> <a
				class="nav-link" href="cart.jsp">
				<li class="fa fa-shopping-cart"></li>
			</a>

		</div>
	</div>
	</nav> </header>
	<!-- -cart------------------------------------------------------------------------------ -->
	<div class="small-container cart-page">
		<table>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			<tr>
				<td><div class="cart-info">
						<img src="img2/ppe1.jpg">
						<div>
							<p>Shophere PPE kit Personal <br>Protection  Equipment Disposable<br> Coverall Suit - Free Size Blue</p>
							<small> price: 350.00 rs</small> <a href="#">Remove</a>
						</div>
					</div></td>
				<td><input type="number" value="1"></td>
				<td>350.00 rs</td>
			</tr>
			
		</table>
		<div class="total-price">
		<table>
		<tr>
		<td>Subtotal</td>
		<td>350.00 rs</td>
		</tr>
		
		<tr>
		<td>Total</td>
		<td>350.00 rs</td>
		</tr>
		</table>
		</div>
		
		
	</div>
	
	
	
	
	<!-------------FOOTER------------------->


	<div class="footer">
		<div class="container">
			<hr>
			<p class="Copyright">Copyright 2021 H&M Market</p>
		</div>
	</div>


	<script>
		var MenuItems = document.getElementById("MenuItems");
		MenuItems.style.maxHeight = "0px";
		function menutoggle() {
			if (MenuItems.style.maxHeight == "0px") {
				MenuItems.style.maxHeight == "200px";
			} else {
				MenuItems.style.maxHeight = "0px";
			}
		}
	</script>
	
</body>
</html>
	