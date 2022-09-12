<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/DateSelection.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Select Date</title>
<c:import url="header.jsp" />
</head>
<body>
	<%@include file="DateSelection_body.jsp"%>
</body>
<footer>
	<jsp:include page="footer.jsp" />
</footer>
</html>