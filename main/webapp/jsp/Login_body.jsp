<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="../WEB-INF/css/password.css"%></style>
<meta charset="UTF-8">
<title>Login Test Page</title>

</head>

<body>
<h1>Sign in To Access Your Account</h1>
<body>
</head>
<body>

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
	<div id="content">
    <form action="/action_page.php" method="post">
  

 <div class="container">
 <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter Email Address" name="email" required>
	
	
	<div class="val">
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" value="FakePSW" id="myInput" required>
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
    
    <div class="acct" style="background-color:">
  </div>
  
  <br>
    <span class="psw"><a href="#">Forgot Password</a></span>
  
  <br>
</form>            
 
  </div>
  <div class="register">
  	<br/>
  	<span>Don't have an account? <a href="#">Create your account now</a></span>
  	<br/>
  </div>
  
</body>
</html>