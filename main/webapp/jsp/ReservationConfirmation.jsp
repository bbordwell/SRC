<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<%@ page import="model.Customer" %>
<jsp:useBean id="reservation" scope="session" class="model.Reservation"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reservation confirmation</title>
    <style><%@include file="../WEB-INF/css/ReservationConfirmation.css"%></style>
    <%
    	//get customer information
    	String user = (String)session.getAttribute("user");
    	Customer customer = dataManager.getCustomer(user);
    	
    	//store room selection data
    	String location = (String) request.getParameter("location");
    	reservation.setLocation(location);
    	String roomType = (String) request.getParameter("roomType");
    	reservation.setRoomType(roomType);
    	int guests = Integer.valueOf(request.getParameter("guests"));
    	reservation.setGuests(guests);
    	reservation.setCustomerId(customer.getCustomerID());
    	String wifi = (String) request.getParameter("wifi");
        reservation.setWifi(wifi);
        String breakfast = (String) request.getParameter("breakfast");
        reservation.setBreakfast(breakfast);
        String parking = (String) request.getParameter("parking");
        reservation.setParking(parking);
    %>
</head>
<body>
	<c:import url="header.jsp" />
	
	<div id="container">
        <div id="hello"><h3>Hello, <%out.print(customer.getFirstName());%>  <%out.print(customer.getLastName());%>!</h3></div>
        <form action="">
        <input type="hidden" name="action" value="ReservationSummary"/>
       <div id="reservationContainer">
         <table id="payment">
            	<tr>
            		<td>Your Reservation</td>
            	</tr>
            </table>
            <br/>
        <table>
        	<tr>
        		<td>Proviso <%out.print(reservation.getLocation());%></td>
        	</tr>
            <tr>
                <td><%out.print(reservation.getRoomType());%> 1 Room</td>
            </tr>
            <tr>
            	<td><%out.print(reservation.getGuests() + " Guests"); %></td>
            </tr>
            <tr>
            	<td><%out.print(dataManager.getNumberOfNights(reservation) + " Nights"); %></td>
            </tr>
            <tr>
                <td>
                    Check-in <%out.print(reservation.getCheckIn()); %> - Check-out <%out.print(reservation.getCheckOut()); %>
                </td>
            </tr>
       </table>
       <br/>
       <table id="cost">
            <tr>
                <td id="label">Subtotal</td>
                <td id="money">$</td>
            </tr>
            <tr>
                <td id="label">Tax</td>
                <td id="money">$</td>
            </tr>
            <tr>
                <td id="label">Total</td>
                <td id="money">$</td>
            </tr>
        </table>
       </div>
       <div id="guestInformationContainer">
            <div id="guestInformation">Guest Information</div>
            <table id="guestInformationTable">
                <tr>
                    <td><div id="firstName"><%out.print(customer.getFirstName());%></div></td>
                    <td><div id="email"><%out.print(customer.getEmail());%></div></td>
                </tr>
                <tr>
                    <td><div id="lastName"><%out.print(customer.getLastName());%></div></td>
                    <td><div id="phoneNumber"><%out.print(customer.getPhoneNumber());%></div></td>
                </tr>
            </table>
       </div>
       <div id="PaymentContainer">
            <table id="payment">
            	<tr>
            		<td>Payment</td>
            	</tr>
            </table>
            <table id="PaymentInformation">
            	<tr>
            		<td id="label">Name on Card: </td>
            		<td>
		                <input type="text" name="NameOnCard" id="" required size="20">
		            </td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td id="label">Expiration: </td>
		            <td>
		                <input type="text" name="exp" minlength='4' maxlength='4' required size="20"><br>
		            </td>
                </tr>
                <tr>
                	<td id="label">Card Number: </td>
                	<td>
		                <input type="text" name="CardNumber" id="" required size="20">
		            </td>
		            <td></td>
		            <td></td>
		            <td></td>
		            <td id="label">CVV: </td>
		            <td>
		                <input type="text" required size="20">
		            </td>
                </tr>
                <tr>
                	<td>
                </tr>
            </table>
            <table id="submit">
            	<tr>
            		<td><button type="submit" id="submit">Complete Reservation</button></td>
            	</tr>
            </table>
       </div>
        </form>
        <p>Need to start over? <a href="">Click here to cancel</a></p>
   </div> 
   
   <jsp:include page="footer.jsp" />
</body>
</html>