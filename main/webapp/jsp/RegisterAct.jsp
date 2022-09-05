<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <style><%@include file="../WEB-INF/css/register.css"%></style>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>




<h3> Helpful hints<br> Password must be at least 8<br>characters long<br>and must include one uppercase<br>and one lowercase letter.</h3>

<hr>


 
<form class="form-inline">
	<input type="hidden" name="action" value="registerAction"/>

  <div class="container">
    <h1>Create a Free Account </h1>
    <p>Come join our community! Set up your account. Already have one? <span style ="color:blue">Sign in</span></p>
    </div>
		
	<div class="group" >
    <label for="firstname"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstname" id="firstname" required>
     <label for="Lastname"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastname" id="lastname" required>
  	
   </div>
    
    
    
    <div class="group"  >
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
    <label for="psw"><b>Confirm Password</b></label>
    <input type="password" placeholder="Reenter Password" name="pswre" id="repsw" required>
    </div>
    
    <div class="group" >
    <label for="email"><b>Email</b></label>
    <input type="password" placeholder="Email" name="email" id="email" required>
    <label for="email"><b>Confirm Email</b></label>
    <input type="password" placeholder="Reenter Email" name="email" id="email" required>
    </div>
    
    <div class="group" >
    <label for="phone"><b>Phone</b></label>
    <input type="tel" placeholder="Enter Phone" name="phone" id="phone" required>
    
    <label for="phone"><b>Confirm Phone</b></label>
    <input type="tel" placeholder="Confirm Phone" name="phone" id="phone" required>
     </div>
    
    
   
    
    <p>by submitting the form you agree to our <a href="#">Terms of service</a>.</p>
    <button type="submit" class="registerbtn">Join</button>
 

  
</form>



</body>
</html>