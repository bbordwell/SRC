<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style><%@include file="../WEB-INF/css/header_footer.css"%></style>
    <style>
        * {
            font-family: Glacial;
        }
    </style>
    <title>header</title>
</head>
<body>
    <header>
    	<div class="header-content">
	    	<div class="header-left">
	    		<div class="logo">
	    			<a href="/Proviso/ProvisoServlet?action=LandingPage">
	    				<img class='logo-picture' alt='logo' src="${pageContext.request.contextPath}/img/proviso_logo.png">
	    			</a>
	        	</div>
	    	</div>
			<div class="header-middle">
				<div class=header-nav>
					<ul>
	  					<li id="left"><a href="/Proviso/ProvisoServlet?action=DateSelection">Book Now</a></li>
						<li id="middle"><a href="/Proviso/ProvisoServlet?action=locations">Locations</a></li>
						<li id="right"><a href="/Proviso/ProvisoServlet?action=ReservationLookup">My Reservations</a></li>
					</ul>
				</div>
			</div>
			<div class="header-right">
				<div class='sign-in-nav'>
					<ul>
	  					<li><a href="/Proviso/ProvisoServlet?action=LoginTest" id="left">Sign In</a></li>
						<li><a href="/Proviso/ProvisoServlet?action=Register" id="right">Register</a></li>
					</ul>
				</div>
			</div>
		</div>
    </header>
</body>
</html>