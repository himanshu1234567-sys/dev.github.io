
<%
response.setHeader("Cache-Control", "no-cache");

//Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store");

//Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0);

//Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache");
//HTTP 1.0 backward enter code here

if (session.getAttribute("uname") != null) {
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,dao.DAOClass, dbcon.DBCon"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
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

<meta charset="ISO-8859-1">
<title>Profile</title>

</head>
<body style="background-color: grey;">
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
			<a href="index.jsp" class="navbar-brand">Survive'Kit</a>
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
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Products</a>
						<div class="dropdown-menu">
							<a href="ppekit.jsp" class="dropdown-item">PPE Kit</a> <a
								href="#" class="dropdown-item">Sanitizer</a> <a href="#"
								class="dropdown-item">Masks and Gloves</a> <a href="#"
								class="dropdown-item">Tablets</a>
						</div>
					</div>
				</div>
				<h3>
					<font color="white">Welcome 
				</h3><%=session.getAttribute("uname")%></font>
				<div class="navbar-nav">
					<a href="newprofile.jsp" class="nav-item nav-link">Profile</a> <a
						href="LogoutServlet" class="nav-item nav-link">Logout</a>
				</div>
			</div>
		</nav>
	</header>

	<h1>welcome user</h1>

	<div class="container">
		<div class=row>



			<div class="col-col2" style="padding-left: 200px; width: 50%">
				<div class="container" style="background-color: red"></div>
				<form class="form-group" action="ProfileServlet" method="POST"
					enctype="form/form-data">
					<%
					String uname = String.valueOf(session.getAttribute("uname"));
					Connection con = null;
					Statement stmt = null;
					ResultSet rs = null;
					try {
						DBCon dbCon = DBCon.getInstance();
						con = dbCon.getConnection();
						stmt = con.createStatement();
						rs = stmt.executeQuery("SELECT * FROM users WHERE uname='" + uname + "'");
						if (rs.next()) {
					%>

					<div>
						<label for="email">Name:</label> <input class="form-control"
							type="text" name="uname" value="<%=rs.getString("uname")%>">
					</div>
					<div>
						<label for="email">Email address:</label> <input
							class="form-control" type="email" name="email"
							value="<%=rs.getString("email")%>">
					</div>
					<div>
						<input class="btn btn-primary btn-sm" name="image" type="file" value="choose">
					</div>

					<div>
						<br> <input class="btn btn-primary btn-sm" type="submit"
							value="submit">
					</div>



					<%
					}
					} catch (SQLException e) {
					out.print(e.getMessage());
					}
					%>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%
} else {
response.sendRedirect("error.jsp");
}
%>
