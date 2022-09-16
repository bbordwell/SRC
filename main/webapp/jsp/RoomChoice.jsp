<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<jsp:useBean id="reservation" scope="session" class="model.Reservation"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/RoomChoice.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Room Choice</title>
<%
	//Store checkin and checkout dates in reservation bean
	String checkin = (String) request.getParameter("checkin");
	reservation.setCheckIn(checkin);
	String checkout = (String) request.getParameter("checkout");
	reservation.setCheckOut(checkout);
%>
</head>

<body>
<c:import url="header.jsp" />
<form id="bookNow">
	<input type='hidden' name='location' id='location'>
	<input type='hidden' name='guests' id='guests' value='1'> <%--Set default value so it is not blank if onChange is never triggered --%>
	<input type='hidden' name='roomType' id='roomType'>
	<input type="hidden" name="action" value="ReservationConfirmation"/>
</form>
	<div class="top-options">
		<div id="left-column">
			<div class="Location">
				<h2>Location:</h2>
				<div class="select">
					<select name="slctLocation" id="slctLocation">
						<option disabled hidden selected value="#">Select Location</option>
						<option value="Omaha">Omaha</option>
						<option value="Lincoln">Lincoln</option>
						<option value="Scottsbluff">Scottsbluff</option>
						<option value="O'Niell">O'Niell</option>
						<option value="Kearny">Kearney</option>
						<option value="North Platte">North Platte</option>
						<option value="South Sioux City">South Sioux City</option>
						<option value="Bellevue">Bellevue</option>
					</select>
				</div>
			</div>
			<div class="Guests">
				<h2>Number of Guests:</h2>
				<div class="select">
					<select name="slctGuests" id="slctGuests">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
			</div>
		</div>
		<div>
			<h2>Additional Amenities:</h2>
			<div id="additionalAmenitiesContainer">
				<table>
					<tr>
						<td id="table-left"><label for="wifi">WiFi</label></td>
		                <td id="table-center"><input type="checkbox" name="wifi" id="wifi"></td>
		                <td id="table-right"><a>$12.99</a></td>
		                <td>flat fee</td>
					</tr>
					<tr>
						<td id="table-left"><label for="breakfast">Breakfast</label></td>
		                <td id="table-center"><input type="checkbox" name="breakfast" id="breakfast"></td>
		                <td id="table-right"><a>$&nbsp;8.99</a></td>
		                <td>per night</td>
					</tr>
					<tr>
						<td id="table-left"><label for="parking">Parking</label></td>
		                <td id="table-center"><input type="checkbox" name="parking" id="parking"></td>
		                <td id="table-right"><a>$19.99</a></td>
		                <td>per night</td>
					</tr>
				</table>
	       </div>
       </div>
	</div>
<main>
	<div class="main-container">
		<div class='boxes'>
			<div class='Double'>
				<div class='left'>
					<div class='top-left'>
						<h1>Double</h1>
					</div>
					<div class='bottom-left'>
					</div>
				</div>
				<div class='middle'>
					<img class='room-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/Double.jpg">
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$115.50</p>
					</div>
					<div class='bottom-right'>
						<a id=bookDouble>Book Room</a>
					</div>
					<div id="hidden1">Please select a valid location</div>
				</div>
			</div>
			
			<div class='Queen'>
				<div class='left'>
					<div class='top-left'>
						<h1>Queen</h1>
					</div>
					<div class='bottom-left'>
					</div>
				</div>
				<div class='middle'>
					<img class='room-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/Queen.jpg">
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$131.25</p>
					</div>
					<div class='bottom-right'>
						<a id="bookQueen" >Book Room</a>
					</div>
					<div id="hidden2">Please select a valid location</div>
				</div>
			</div>
			
			<div class='Double-Queen'>
				<div class='left'>
					<div class='top-left'>
						<h1>Double Queen</h1>
					</div>
					<div class='bottom-left'>
					</div>
				</div>
				<div class='middle'>
					<img class='room-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/double_queen.jpg">
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$157.50</p>
					</div>
					<div class='bottom-right'>
						<a id="bookDoubleQueen" >Book Room</a>
					</div>
					<div id="hidden3">Please select a valid location</div>
				</div>
			</div>
			
			<div class='King'>
				<div class='left'>
					<div class='top-left'>
						<h1>King</h1>
					</div>
					<div class='bottom-left'>
					</div>
				</div>
				<div class='middle'>
					<img class='room-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/King.jpg">
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$173.25</p>
					</div>
					<div class='bottom-right'>
						<a id="bookKing" >Book Room</a>
					</div>
					<div id="hidden4">Please select a valid location</div>
				</div>
			</div>
		</div>
		
	</div>
</main>
<footer>
<jsp:include page="footer.jsp" />
</footer>

<script>
	document.getElementById('slctLocation').onchange = function() {
		document.getElementById('location').value = document.getElementById("slctLocation").value;
	}
	document.getElementById('slctGuests').onchange = function() {
		document.getElementById('guests').value = document.getElementById("slctGuests").value;
		}
	document.getElementById('bookDouble').onclick = function() {
		if (slctLocation.value == "#") {
			 document.getElementById("hidden1").style.display = 'inline';
		} else {
			document.getElementById('roomType').value = "Double";
			document.getElementById("bookNow").submit();
		}
	}
	document.getElementById('bookQueen').onclick = function() {
		if (slctLocation.value == "#") {
			document.getElementById("hidden2").style.display = 'inline';
		} else {
			document.getElementById('roomType').value = "Queen";
			document.getElementById("bookNow").submit();
		}
	}
	document.getElementById('bookDoubleQueen').onclick = function() {
		if (slctLocation.value == "#") {
			document.getElementById("hidden3").style.display = 'inline';
		} else {
			document.getElementById('roomType').value = "Double Queen";
			document.getElementById("bookNow").submit();
		}
	}
	document.getElementById('bookKing').onclick = function() {
		if (slctLocation.value == "#") {
			document.getElementById("hidden4").style.display = 'inline';
		} else {
			document.getElementById('roomType').value = "King";
			document.getElementById("bookNow").submit();
		}
	}
</script>

</body>

</html>