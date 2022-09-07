<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Home Page</h1>
	
	<%--Example link--%>
	<a href="/Proviso/ProvisoServlet?action=about">About Us</a>
	
	<%--Example Button --%>
	<form>
		<input type="hidden" name="action" value="locations"/>
		<input id="submit" type="submit" value="locations"/>
	</form>
	
	<%--Page to test inserting data to the DB. --%>
	<a href="/Proviso/ProvisoServlet?action=DataTest">DBTest</a>
	
	<br>
	<%--If the user is logged in show them a welcome message and a logout button, otherwise show a link to the login page --%>
	<% 
		if (session.getAttribute("user") != null) {
			out.println("Welcome " + session.getAttribute("user"));
			%>
		<form>
			<input type="hidden" name="action" value="logout"/>
			<input id="submit" type="submit" value="logout"/>
		</form>
		
		<%}
		else {%>
		<a href="/Proviso/ProvisoServlet?action=LoginTest">Log In</a>
		<br>
		<%--Link to Registration page --%>
		<a href="/Proviso/ProvisoServlet?action=Register">Register</a>
		<%} %>
	
	<br>	
	<%--Link to landing page --%>
	<a href="/Proviso/ProvisoServlet?action=LandingPage">Landing Page</a>
	<br>	
	<%--Link to Room Choice page --%>
	<a href="/Proviso/ProvisoServlet?action=RoomChoice">Room Choice Page</a>
	
	
	
</body>
</html>