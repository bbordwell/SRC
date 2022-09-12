<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<%@ page import="model.ReservationSummaryObject" %>
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
	<%
	// NEED CHECKOUT DATE
	// NEED NUMBER OF GUESTS
	//Must use Datamanager bean, and import model.ReservationSummaryObject (see lines 3 and 4).
	ReservationSummaryObject myReservation = dataManager.getReservationSummary(1);	//Create the object. Input is the reservation ID you are looking for.
	//out.println(myReservation.getCheckIn().getDate()); //See date of check-in
	//out.println(myReservation.getCheckIn().getMonth() + 1); //see month of check-in
	//out.println(myReservation.getCheckIn().getYear() + 1900); // see year of check-in
	//out.println(myReservation.getEarnedPoints()); //see earned points
	//out.println(myReservation.getStayDates()); //Get number of nights
	%>
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
					<p>
					<%
					out.println(myReservation.getFirstName()); //See First name
					out.println(myReservation.getLastName()); //See Last name
					%>
					</p>
				</div>
				<div class="inner-right">
					<h2>Reservation ID</h2>
					<p>
					<%
					out.println(myReservation.getReservationID()); //See reservation ID
					%>
					</p>
				</div>
			</div>
			
			<div class="box-3">
				<h2>Stay Dates</h2>
				<p>
				<% 
				out.println(myReservation.getStayDatesString());
				%> 
				</p>
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
					<p>
					<%
					out.println(myReservation.getRoomType()); // see room type
					%>
					</p>
				</div>
			</div>
			
			<div class="box-6">
				<div class="inner-left">
					<h2>Number of Nights</h2>
					<p>
					<%
					out.println(myReservation.getNumberOfNights());
					%>
					</p>
				</div>
				<div class="inner-right">
					<h2>Estimated Total</h2>
					<p>
					<%
					out.println(myReservation.getAmountString());
					%>
					</p>
				</div>
			</div>
			
			<div class="box-7">
				<div class="inner-1">
					<h3><a href="/Proviso/ProvisoServlet?action=ReservationSummary">Parking</a></h3>
				</div>
				<div class="inner-2">
					<h3><a href="/Proviso/ProvisoServlet?action=ReservationSummary">Dining</a></h3>
				</div>
				<div class="inner-3">
					<h3><a href="/Proviso/ProvisoServlet?action=ReservationSummary">Hotel Policies</a></h3>
				</div>
				<div class="inner-4">
					<h3><a href="/Proviso/ProvisoServlet?action=ReservationSummary">Things to Do</a></h3>
				</div>
			</div>
		</div>
	</main>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>