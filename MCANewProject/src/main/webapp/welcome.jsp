
<%
if (session.getAttribute("uname")!=null)
	{response.setHeader("Cache-Control", "no-cache");

//Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control", "no-store");

//Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0);

//Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma", "no-cache");
//HTTP 1.0 backward enter code here
	%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap"
	rel="stylesheet">

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
	<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
    window.onbeforeunload = function() { return "You work will be lost."; };
   
</script>

<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<header>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a href="index.jsp" class="navbar-brand">Survive'Kit</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
        <div class="navbar-nav">
            <a href="index.jsp" class="nav-item nav-link  current">Home</a>
            <a href="profile.jsp" class="nav-item nav-link current ">Our Profile</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Products</a>
                <div class="dropdown-menu">
                    <a href="ppekit.jsp" class="dropdown-item">PPE Kit</a>
                    <a href="sanitizer.jsp" class="dropdown-item">Sanitizer</a>
                    <a href="mask.jsp" class="dropdown-item">Masks and Gloves</a>
                
                </div>
            </div>
        </div>
  <h3><font color= "white">Welcome </h3><%= session.getAttribute("uname") %></font>
        <div class="navbar-nav">
        <a href="newprofile.jsp" class="nav-item nav-link">Profile</a>
            <a href="LogoutServlet" class="nav-item nav-link">Logout</a>
        </div>
    </div>
</nav>
</header>


</body>
</html>
<%
}else if(session.getMaxInactiveInterval()>3*60){

	response.sendRedirect("login.jsp");
	session.invalidate();
	session.removeAttribute("uname");
}

else
{
	response.sendRedirect("login.jsp");
	session.invalidate();
	session.removeAttribute("uname");

}
%>
