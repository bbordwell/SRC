<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dataManager" scope="application" class="model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/test.css"%></style>
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
			<div class="top">
				<h1>test</h1>
			</div>
			<div class="middle">
				<h1>test</h1>
			</div>
			<div class="bottom">
				<h1>test</h1>
			</div>
		</div>
	</main>
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
</body>
</html>