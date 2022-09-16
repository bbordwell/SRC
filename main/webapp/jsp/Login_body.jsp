<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/password.css"%></style>
    <style><%@include file="../WEB-INF/css/Main.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Login Test Page</title>
</head>

<script type="text/javascript">

function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>

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
  				<span>Don't have an account? <a href="/Proviso/ProvisoServlet?action=Register">Create your account now</a></span>
  			</div>
		</div>
	</div>
</main>
</body>

</html>