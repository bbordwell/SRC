<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <style><%@include file="../WEB-INF/css/Locations.css"%></style>
    <style><%@include file="../WEB-INF/css/Main.css"%></style>
    	<style>
        	* {
          	  font-family: Glacial;
       		}
    	</style>
<title>Locations</title>
<c:import url="header.jsp" />
</head>
<body>

	<c:import url="header.jsp" />
	
	<main>
		<div class="main-container">
		
			<div class="main-top">
			
				<div class="select">
					<select id="locations" name="locations" onchange="enableLocation(this)">
						<option disabled hidden selected value="#">Select Location</option>
						<option value="0">All Locations</option>
						<option value="1">Omaha</option>
						<option value="2">Lincoln</option>
						<option value="3">Scottsbluff</option>
						<option value="4">O'Niell</option>
						<option value="5">Kearney</option>
						<option value="6">North Platte</option>
						<option value="7">South Sioux City</option>
						<option value="8">Bellevue</option>
					</select>
				</div>
			</div>
			
			<div class="main-bottom">
			
				<div class="boxes">
					<div class="d-none" id="omaha">
						<h2>Omaha</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="lincoln">
						<h2>Lincoln</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="scottsbluff">
						<h2>Scottsbluff</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="oneill">
						<h2>O'Neill</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="kearney">
						<h2>Kearney</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="north-platte">
						<h2>North Platte</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="south-sioux-city">
						<h2>South Sioux City</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
					<div class="d-none" id="bellevue">
						<h2>Bellevue</h2>
						<ul class="address">
							<li>getAddress()</li>
							<li>getCityStateZip()</li>
							<li>USA</li>
							<li>getPhoneNumber()</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<footer>
		<jsp:include page="footer.jsp" />
	</footer>
	
	<script type="text/javascript">
		function enableLocation(answer) {
			console.log(answer.value);
			if(answer.value == 1) {
				document.getElementById('omaha').classList.remove('d-none');
			} else {
				document.getElementById('omaha').classList.add('d-none');
			}
			if(answer.value == 2) {
				document.getElementById('lincoln').classList.remove('d-none');
			} else {
				document.getElementById('lincoln').classList.add('d-none');
			}
			if(answer.value == 3) {
				document.getElementById('scottsbluff').classList.remove('d-none');
			} else {
				document.getElementById('scottsbluff').classList.add('d-none');
			}
			if(answer.value == 4) {
				document.getElementById('oneill').classList.remove('d-none');
			} else {
				document.getElementById('oneill').classList.add('d-none');
			}
			if(answer.value == 5) {
				document.getElementById('kearney').classList.remove('d-none');
			} else {
				document.getElementById('kearney').classList.add('d-none');
			}
			if(answer.value == 6) {
				document.getElementById('north-platte').classList.remove('d-none');
			} else {
				document.getElementById('north-platte').classList.add('d-none');
			}
			if(answer.value == 7) {
				document.getElementById('south-sioux-city').classList.remove('d-none');
			} else {
				document.getElementById('south-sioux-city').classList.add('d-none');
			}
			if(answer.value == 8) {
				document.getElementById('bellevue').classList.remove('d-none');
			} else {
				document.getElementById('bellevue').classList.add('d-none');
			}
		};
	</script>
	
</body>
</html>