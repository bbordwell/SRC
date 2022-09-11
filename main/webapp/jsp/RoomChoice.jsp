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
<title>Insert title here</title>

</head>

<body>
<c:import url="header.jsp" />
<main>
	<div class="main-container">
		<div class='boxes'>
			<div class='Standard-King'>
				<div class='left'>
					<img class='event-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/king.jpg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Standard King</h1>
					</div>
					<div class='bottom-middle'>
						<p>Our modern Standard King room starts with it's big cozy bed. We've made sure to get the softed linens we could get our hands on and doubled down on the fluffiness of the pillows. When your evening winds down, sit back and relax with bubbles and salts in the spa bath. When the morning comes, open our blinds to and smell the coffee while you enjoy the natural light and views of the country.</p>
					</div>
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$99</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
					</div>
				</div>
			</div>
			<div class='Standard-Double-Queen'>
				<div class='left'>
					<img class='event-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/double_queen.jpg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Standard-Double-Queen</h1>
					</div>
					<div class='bottom-middle'>
						<p>You and your guests can rest easy in our spacious Double Queen room. With plenty of closet space, room to work, and a ful bathroom, you won't have to worry about stepping over each others feet when you stay with Proviso. When night comes, you won't have to worry about each others sleep habits with complimentary sleep masks and ear plugs.</p>
					</div>
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$109</p>
					</div>
					<div class='bottom-right'>
						<a href="" >Book Room</a>
					</div>
				</div>			
			</div>
			<div class='Superior-King'>
				<div class='left'>
					<img class='event-picture' id='event-picture-sk' alt='event picture' src="${pageContext.request.contextPath}/img/superior_king.jpg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Superior King</h1>
					</div>
					<div class='bottom-middle'>
						<p>Walk in and drop your bags, not your jaw, your bags. Our Superior King room is freshly styled and ready for any occasion. With a full kitchen, living room, and California King, you may just never want to leave, and that's just fine with us - we can bring Nebraska's charm to you!</p>
					</div>
				</div>
				<div class='right'>
					<div class='top-right'>
						<p>$119</p>
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