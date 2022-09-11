<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
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
</head>

<body>
<c:import url="header.jsp" />
<main>

	<div class="main-container">
	
		<div class="Location">
			<h2>Location:</h2>
			<div class="select">
				<select name="slct" id="slct">
					<option>Select Location</option>
					<option value="1">Omaha</option>
					<option value="1">Lincoln</option>
					<option value="1">Scottsbluff</option>
					<option value="1">O'Niell</option>
					<option value="1">Kearney</option>
					<option value="1">North Platte</option>
					<option value="1">South Sioux City</option>
					<option value="1">Bellevue</option>
				</select>
			</div>
		</div>
		<div class="Guests">
			<h2>Number of Guests:</h2>
			<div class="select">
				<select name="slct" id="slct">
					<option>1</option>
					<option value="1">1</option>
					<option value="1">2</option>
					<option value="1">3</option>
					<option value="1">4</option>
					<option value="1">5</option>
				</select>
			</div>
		</div>
		
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
						<p>$110.00</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
					</div>
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
						<p>$125.00</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
					</div>
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
						<p>$150.00</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
					</div>
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
						<p>$165.00</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
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