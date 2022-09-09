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
					<img class='event-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/king.jpeg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Standard King</h1>
					</div>
					<div class='bottom-middle'>
						<p>INFORMATION ABOUT ROOM Vestibulum consequat eget arcu at viverra. Maecenas feugiat, ex vel auctor egestas, ligula eros elementum turpis, et eleifend sem odio non mi. Aenean cursus ac nunc id ullamcorper. Proin ligula nibh, eleifend sed mi vitae, vehicula tincidunt leo. Sed efficitur libero vitae egestas pellentesque.</p>
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
					<img class='event-picture' alt='Hotel Room Picture' src="${pageContext.request.contextPath}/img/double_queen.jpeg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Standard-Double-Queen</h1>
					</div>
					<div class='bottom-middle'>
						<p>INFORMATION ABOUT ROOM Vestibulum consequat eget arcu at viverra. Maecenas feugiat, ex vel auctor egestas, ligula eros elementum turpis, et eleifend sem odio non mi. Aenean cursus ac nunc id ullamcorper. Proin ligula nibh, eleifend sed mi vitae, vehicula tincidunt leo. Sed efficitur libero vitae egestas pellentesque.</p>
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
					<img class='event-picture' id='event-picture' alt='event picture' src="${pageContext.request.contextPath}/img/superior_king.jpeg">
				</div>
				<div class='middle'>
					<div class='top-middle'>
						<h1>Superior King</h1>
					</div>
					<div class='bottom-middle'>
						<p>INFORMATION ABOUT ROOM Vestibulum consequat eget arcu at viverra. Maecenas feugiat, ex vel auctor egestas, ligula eros elementum turpis, et eleifend sem odio non mi. Aenean cursus ac nunc id ullamcorper. Proin ligula nibh, eleifend sed mi vitae, vehicula tincidunt leo. Sed efficitur libero vitae egestas pellentesque.</p>
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