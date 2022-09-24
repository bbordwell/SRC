<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/Rewards.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Rewards Program</title>
<c:import url="header.jsp" />
</head>
<body>
	<div class='container'>
		<h1>Proviso Rewards</h1>
	</div>
		<table border="1">
			<colspan>
				<col span="1" style="width: 44%;">
				<col span="1" style="width: 14%;">
				<col span="1" style="width: 14%;">
				<col span="1" style="width: 14%;">
				<col span="1" style="width: 14%;">
			</colspan>
			<tr>
				<th><h2>Benefit</h2></th>
				<th>
					<img class="badge" src='img/Member.png' alt='Tier: Member'><br>
					0-999 pts
				</th>
				<th>
					<img class="badge" src='img/Silver.png' alt='Tier: Silver'><br>
					1000-4999 pts
				</th>
				<th>
					<img class="badge" src='img/Gold.png' alt='Tier: Gold'><br>
					5000-9999 pts
				</th>
				<th>
					<img class="badge" src='img/Diamond.png' alt='Tier: Diamond'><br>
					10000+ pts
				</th>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>		
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>		
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td></td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>
			<tr class="data">
				<td>Lorem ipsum dolor sit amet</td>
				<td></td>
				<td></td>
				<td></td>
				<td><img class="check" src="img/check-mark.png" alt="checkmark"></td>
			</tr>		
		</table>
</body>
<footer>
<jsp:include page="footer.jsp" />
</footer>
</html>