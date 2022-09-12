<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reservation confirmation</title>
    <style><%@include file="../WEB-INF/css/ReservationConfirmation.css"%></style>
</head>
<body>
	<c:import url="header.jsp" />
	
	<div id="container">
        <div id="hello">Hello logged in user</div>
        <form action="">
        <input type="hidden" name="action" value="ReservationSummary"/>
        <div id="additionalAmenitiesContainer">
            <div id="additionalAmenities">Additional Amenities</div>
            <div id="wifi">
                <label for="wifi">WiFi</label>
                <input type="checkbox" name="wifi" id="wifi">
                <a>$12.99 flat fee</a>
            </div>
            <div id="breakfast">
                <label for="breakfast">Breakfast</label>
                <input type="checkbox" name="breakfast" id="breakfast">
                <a>8.99 per night</a>
            </div>
            <div id="parking">
                <label for="parking">Parking</label>
                <input type="checkbox" name="parking" id="parking">
                <a>$19.99 per night</a>
            </div>
       </div>
       <div id="reservationContainer">
        <p>Your Reservation</p>
        <table>
            <tr>
                <td>Room Type</td>
                <td>1 Room</td>
                <td>Number of guests</td>
                <td>Number of nights</td>
            </tr>
            <tr>
                <td>
                    <td>check In</td>
                    <td></td>
                    <td>checkout</td>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>subtotal</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>Tax</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>Total</td>
            </tr>
        </table>
       </div>
       <div id="guestInformationContainer">
            <div id="guestInformation">Guest Information</div>
            <table id="guestInformationTable">
                <tr>
                    <td><div id="firstName">First name</div></td>
                    <td><div id="email">Email</div></td>
                </tr>
                <tr>
                    <td><div id="lastName">Last Name</div></td>
                    <td><div id="phoneNumber">Phone Number</div></td>
                </tr>
            </table>
       </div>
       <div id="PaymentContainer">
            <div id="payment">Payment</div><br>
            <div id="PaymentInformation">
                <label for="NameOnCard">Name on Card:</label>
                <input type="text" name="NameOnCard" id="">
                <label for="Expiration">Expiration:</label>
                <input type="text"><br>
                <label for="CardNumber">Card Number:</label>
                <input type="text" name="CardNumber" id="">
                <label for="CVV">CVV:</label>
                <input type="text">
                <button type="submit" id="submit">Complete Reservation</button>
            </div>
       </div>
        </form>
        <p>Need to start over? <a href="">Click here to cancel</a></p>
   </div> 
   
   <jsp:include page="footer.jsp" />
</body>
</html>