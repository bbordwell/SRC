<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style><%@include file="../WEB-INF/css/Main.css"%></style>
<style><%@include file="../WEB-INF/css/DateSelection.css"%></style>
<style>
* {
	font-family: Glacial;
}
</style>
</head>
<body>
	<div class="container">
		<br/>
		<div class="main center">
			<div class="center-child">
				<!-- Check in/out dates -->
				<form action="/Proviso" id="dateSelect">
					<input type="hidden" id="action" name="action" value="RoomChoice">
					<label for="checkin">Check-In</label> <input type="date"
						id="checkin" name="checkin"> <label for="checkout">Check-Out</label>
					<input type="date" id="checkout" name="checkout">
				</form>
			</div>
			<div>
				<div class="center">
				
					<div id="month1">
					</div>
					
					

			</div>
			<input type="submit" id="submit" type="submit" form="dateSelect">
		</div>
		<br/>
	</div>
	
	<script>
		var checkInDate = "";
		var checkOutDate = "";
		console.log("test1");
		function createCalendar(month) {
			var calendar = "<table>" +
						"<tr><td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td></tr>";
			var date = new Date();
			date.setMonth(month);
			date.setDate(1);
			var column = date.getDay() + 1;
			
			calendar += "<tr>";
			for (var space = 1; space < column; space++) {
				calendar += "<td class=\"td-invisable\"></td>";
			}
			
			//Get the date for the last day of the month.
			var temp = new Date();
			temp.setMonth(month + 1);
			temp.setDate(0);
			
			var max = temp.getDate();
			for(var day = 1; day <= max; day++) {
				calendar += ("<td id=\"" + day + "\" onclick=\"dateSelect("+day+")\">" + day + "</td>");
				
				
				if(column % 7 === 0) {
					calendar += "</tr>";
					
					if(day <= max) {
						calendar += "<tr>";
					}
				}
				column++;
			}
			calendar += "</table>";
			
			return calendar;
		}
		function createCalendar2() {
			var table = document.createElement("table");
			document.getElementById("month1").appendChild(table);
		}
		
		function dateSelect(day) {
			//var selectedDay = document.getElementById("month1").getElementById(day);
			var selectedDay = document.getElementById(day);
			//console.log(checkInDate);
			//console.log(checkOutDate);
			
			if(checkInDate === "" && checkOutDate === "") {
				checkInDate = "2022-09-"+ (day < 10 ? "0" + day : day);
				document.getElementById("checkin").value = checkInDate;
			} else if(checkInDate !== "" && checkOutDate === "") {
				checkOutDate = "2022-09-"+ (day < 10 ? "0" + day : day);
				document.getElementById("checkout").value = checkOutDate;
			} else if(checkInDate === "" && checkOutDate !== "") {
				checkInDate = "2022-09-"+ (day < 10 ? "0" + day : day);
				document.getElementById("checkin").value = checkInDate;
			} else if(checkInDate !== "" && checkOutDate !== "") {
				
			} else {
				console.log(checkInDate);
				console.log(checkOutDate);
			}
			
			if(selectedDay.className === "enabled") {
				selectedDay.className = "";
			} else {
				selectedDay.className = "enabled";
			}
			//console.log(checkInDate);
			//console.log(checkOutDate);
		}
		
		document.getElementById("month1").innerHTML = "<div>September</div>" + createCalendar(8);
		console.log("test2");
	</script>
	
</body>
</html>