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
						id="checkin" name="checkin" required> <label for="checkout">Check-Out</label>
					<input type="date" id="checkout" name="checkout" required>
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
		let dateExpression = "/20[0-9]{2}-[0-1][0-9]-[0-3][0-9]/";
		//var checkInDate = document.getElementById("checkin").value;
		//var checkOutDate = document.getElementById("checkout").value;
		var checkInDate = "";
		var checkOutDate = "";
		var leftMonthDate = "2022-09";
		console.log("test1");
		function createCalendar(year, month) {
			var calendar = "<table>" +
						"<tr><td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td></tr>";
			var date = new Date();
			date.setYear(year);
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
			
			console.log((month + 1 < 10) ? ("0" + month) : month);
			
			var max = temp.getDate();
			for(var day = 1; day <= max; day++) {
				var stringDate = '' + (year < 1000 ? "0" + year : year) + "-" + ((month + 1) < 10 ? "0" + (month + 1) : month + 1) + "-" + (day < 10 ? "0" + day : day);
				console.log(stringDate);
				calendar += ("<td id=\"" + stringDate + "\" onclick=\"dateSelect('" + stringDate + "')\">" + day + "</td>");
				
				
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
		
		function isValidDate(date) {
			var parts = date.split("-");
			
			if (parts.length !== 3) {
				return false
			}
			
			var year = parts[0];
			var month = parts[1];
			var day = parts[2];
			
			if(Number.isInteger(parts[0]) && true) {
				
			}
		}
		
		function updateCalendar() {
			var date = new Date();
			date.setYear(leftMonth.substring(0, 4));
			date.setMonth(leftMonth.substring(5, 7));
			for(;;) {
				
			}
		}
		
		function dateSelect(date) {
			
			//console.log(date);
			//var selectedDateElement = document.getElementById("month1").getElementById(date);
			var selectedDateElement = document.getElementById(date);
			var checkInDateElement = checkInDate !== "" ? document.getElementById(checkInDate) : null;
			var checkOutDateElement = checkOutDate !== "" ? document.getElementById(checkOutDate) : null;
			var stringDate = date;
			
			if(checkInDate !== "" && checkOutDate !== "") {
				if(stringDate.localeCompare(checkInDate) === 0) {
					console.log("Enter in === 0");
					//If selected date is the current checkin date, then unselect the date.
					checkInDateElement.className = "";
					checkInDate = "";
				} else if(stringDate.localeCompare(checkOutDate) === 0) {
					//If selected date is the current checkin date, then unselect the date.
					checkOutDateElement.className = "";
					checkOutDate = "";
				} else if(stringDate.localeCompare(checkInDate) < 0) {
					//If selected date is less than the current checkin date, then set the checkin date to the selected date.
					checkInDateElement.className = "";
					selectedDateElement.className = "enabled";
					checkInDate = date;
				} else if(stringDate.localeCompare(checkOutDate) < 0) {
					//If selected date is less than the current checkout date, then set the checkout date to the selected date.
					checkOutDateElement.className = "";
					selectedDateElement.className = "enabled";
					checkOutDate = date;
				} else if(stringDate.localeCompare(checkOutDate) > 0) {
					//If selected date is greater than the current checkout date, then set the checkout date to the selected date.
					checkOutDateElement.className = "";
					selectedDateElement.className = "enabled";
					checkOutDate = date;
				} else {
					//Uh oh.
					checkInDate = "";
					checkOutDate = "";
				}
			} else if(checkInDate !== "" && checkOutDate === "") {
				if(stringDate.localeCompare(checkInDate) === 0) {
					//If selected date is the current checkin date, then unselect the date.
					checkInDateElement.className = "";
					checkInDate = "";
				} else if(stringDate.localeCompare(checkInDate) < 0) {
					//If selected date is before checkin date, then checkin date becomes checkout date and checkin date becomes selected date.
					checkOutDate = checkInDate;
					checkInDate = stringDate;
					selectedDateElement.className = "enabled";
				} else {
					//Otherwise, the checkout date is the selected date.
					checkOutDate = stringDate;
					selectedDateElement.className = "enabled";
				}
			} else if(checkInDate === "" && checkOutDate !== "") {
				if(stringDate.localeCompare(checkOutDate) === 0) {
					//If selected date is the current checkout date, then unselect the date.
					checkOutDateElement.className = "";
					checkInDate = "";
				} else if(stringDate.localeCompare(checkOutDate) > 0) {
					//If selected date is after checkout date, then checkout date becomes checkin date and checkin date becomes selected date.
					checkInDate = checkOutDate;
					checkOutDate = stringDate;
					selectedDateElement.className = "enabled";
				} else {
					//Otherwise, the checkin date is the selected date.
					checkInDate = stringDate;
					selectedDateElement.className = "enabled";
				}
			} else if(checkInDate === "" && checkOutDate === "") {
				//If neither checkin date nor the checkout date have been selected, then the checkin date is the selected date.
				checkInDate = stringDate;
				selectedDateElement.className = "enabled";
			} else {
				//Uh oh.
				checkInDate = "";
				checkOutDate = "";
			}
			
			//console.log(checkInDate);
			//console.log(checkOutDate);
			
			document.getElementById("checkin").value = checkInDate;
			document.getElementById("checkout").value = checkOutDate;
		}
		
		document.getElementById("month1").innerHTML = "<div>September</div>" + createCalendar(2022, 8);
		console.log("test2");
	</script>
	
</body>
</html>