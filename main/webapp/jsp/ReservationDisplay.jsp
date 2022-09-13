<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/ReservationDisplay.css"%></style>
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
		
			<div class="main-top-left">
				<h1>Reservation:</h1>
			</div>
			
			<div class="main-top-right">
				<p>#12345</p>
			</div>
			
		</div>
		
		<div class="main-bottom">
		
			<div class="bottom-left">
				<div class="Hotel">
					<h2>Blue Team's Hotel</h2>
					<ul class="address">
						<li>410 North Dearborn Street</li>
						<li>Chicago, Illinois 60654</li>
						<li>USA</li>
						<li>3124949301</li>
					</ul>
				</div>
			</div>
			
			<div class="bottom-middle">
				<div class="stay">
					<h2>Your Stay</h2>
					<div class="info">
						<div class="info-template">
							<ul>
								<li>Guest Name:</li>
								<li>Check-in:</li>
								<li>Check-out:</li>
								<li>Number of guests:</li>
								<li>Number of rooms:</li>
							</ul>
						</div>
						<div class="info-insert">
							<ul>
								<li>Andrew Reeson</li>
								<li>Thursday, July 28, 2022</li>
								<li>Sunday, July 31, 2022</li>
								<li>2</li>
								<li>1</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
			<div class="bottom-right">
				<div class="room">
					<h2>Room & Amenities</h2>
					<div class="info">
						<div class="info-template">
							<ul>
								<li>Room:</li>
								<li>Wifi:</li>
								<li>Breakfast:</li>
								<li>Parking:</li>
							</ul>
						</div>
						<div class="info-insert">
							<ul>
								<li>King</li>
								<li>YES</li>
								<li>YES</li>
								<li>YES</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		
	</div>
	
</main>

<footer>
<jsp:include page="footer.jsp" />
</footer>

</body>

</html>