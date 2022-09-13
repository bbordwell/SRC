<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/ReservationLookup.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Reservation</title>
</head>

<body>
<c:import url="header.jsp" />

<main>

	<div class="main-container">
	
		<div class="main-top">
			<h1>Reservation Lookup</h1>
		</div>
		
		<div class="main-bottom">
			<div class="form">
			<input type="hidden" name="action" value="ReservationDisplay.jsp"/>
				<label for="reservationID"><b>Reservation ID:</b></label>
				<input type="text" placeholder="Enter ID" name="reservationID" id="reservationID" required>
				<div class="button-container">
					<button type="submit" class="registerbtn">Search</button>
				</div>
			</div>
		</div>
		
	</div>
	
</main>

<footer>
<jsp:include page="footer.jsp" />
</footer>

</body>

</html>ß