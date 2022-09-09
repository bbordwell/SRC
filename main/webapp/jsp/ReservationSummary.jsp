<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/ReservationSummary.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Reservation Summary</title>

</head>

<body>

	<c:import url="header.jsp" />
	
	<main>
		<div class="main-container">
		
			<div class="box-1">
				<h1>Thank you for reserving!</h1>
			</div>
			
			<div class="box-2">
				<div class="inner-left">
					<h2>Guest Name</h2>
					<p>Ben Bordwell</p>
				</div>
				<div class="inner-right">
					<h2>Confirmation #</h2>
					<p>01010101010</p>
				</div>
			</div>
			
			<div class="box-3">
				<h2>Stay Dates</h2>
				<p>Thursday, August 18th, 2022 - Saturday, August 20th, 2022</p>
			</div>
			
			<div class="box-4">
				<div class="inner-left">
					<h2>Check-In</h2>
					<p>4:00 PM</p>
				</div>
				<div class="inner-right">
					<h2>Check-Out</h2>
					<p>11:00 AM</p>
				</div>
			</div>
			
			<div class="box-5">
				<div class="inner-left">
					<h2># of Guests</h2>
					<p>2</p>
				</div>
				<div class="inner-right">
					<h2>Room Type</h2>
					<p>Standard King</p>
				</div>
			</div>
			
			<div class="box-6">
				<div class="inner-left">
					<h2>Number of Nights</h2>
					<p>2</p>
				</div>
				<div class="inner-right">
					<h2>Estimated Total</h2>
					<p>$209.88</p>
				</div>
			</div>
			
			<div class="box-7">
				<div class="inner-1">
					<h3>Parking</h3>
				</div>
				<div class="inner-2">
					<h3>Dining</h3>
				</div>
				<div class="inner-3">
					<h3>Hotel Policies</h3>
				</div>
				<div class="inner-4">
					<h3>Things To Do</h3>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>