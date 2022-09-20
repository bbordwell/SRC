<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Proviso Login</title>
</head>
<body>
<body>
<main>
	<div class="main-container">
		<div class="main-top">
			<h1>Sign in To Access Your Account</h1>
		</div>
		<div class="main-middle">
			    <form>
			  		<input type="hidden" name="action" value="LoginTest"/>
						<div class="container">
			 				<label for="uname"><b>Email</b></label>
			    			<input type="text" placeholder="Enter Email Address" name="EmailAddress" required>
			    			
							<div class="val">
					    		<label for="psw"><b>Password</b></label>
					    		<input type="password" placeholder="Enter Password" value="FakePSW" id="myInput" name="password" required>
					    		<input type="checkbox" checked="checked" name="remember"> Remember me
			    			</div>
			    				
			    			<div id="show">
			    				<input type="checkbox" onclick="myFunction()">Show Password
			   				</div>    
			   			</div>
			
			 			<div id="sub">
			  				<label>
			    				<button type="submit">Sign in</button>
			     			</label>
			  			</div>
			  			<br>	
	  					<span class="psw"><a href="#">Forgot Password</a></span>
						<br>
				</form> 
		</div>
		<div class="main-bottom">
  			<div class="register">
  				<br/>
  				<span>Don't have an account? <a href="/Proviso?action=Register">Create your account now</a></span>
  			</div>
		</div>
	</div>
</main>
<%--If the log in values are valid set the user session attribute and go back to the homepage. --%>
	<%if (dataManager.isValidLogin(request.getParameter("EmailAddress"), request.getParameter("password"))) { 
		session.setAttribute("user",request.getParameter("EmailAddress"));%>
	<jsp:forward page="/jsp/LandingPage.jsp"></jsp:forward>
	<%}%>
<c:import url="header.jsp" />
<%@include file="Login_body.jsp"%>
<jsp:include page="footer.jsp" />
</body>
<footer>
</footer>
</html>

<!-- source for how to format header and footer: https://codebun.com/include-header-and-footer-in-jsp-using-jstl/ -->