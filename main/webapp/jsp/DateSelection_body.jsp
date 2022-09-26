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
			<div id="date-display" class="center-child">
				<!-- Check in/out dates -->
				<form action="/Proviso" id="dateSelect">
					<% Calendar today = Calendar.getInstance(); %>
					<input type="hidden" id="action" name="action" value="RoomChoice">
					<label for="checkin">Check-In</label>
					<input type="date" id="checkin" name="checkin" oninput="dateSelectManual('checkin')" min="2022-09-25" required>
					<label for="checkout">Check-Out</label>
					<input type="date" id="checkout" name="checkout" oninput="dateSelectManual('checkout')" min="2022-09-25" required>
				</form>
			</div>
			<!-- This contains the displayed calendars -->
			<div id="displayed-calendars" class="center">
				
				
				
				
				
				
			</div>
			<input type="submit" id="submit" type="submit" form="dateSelect">
		</div>
		<br/>
	</div>
	
	<script>
		//Start up stuff
		let currentDate = new Date();
		let firstDisplayMonth = new Date(currentDate.getFullYear(), currentDate.getMonth());
		
		let currentMonthYear = new Date(currentDate.getFullYear(), currentDate.getMonth());
		let nextMonthYear = new Date(currentMonthYear.getFullYear(), currentMonthYear.getMonth() + 1);
		//let nextMonthYear = new Date(currentMonthYear.getFullYear(), 12);
		
		
		let checkInDate = "";
		let checkOutDate = "";
		
		let leftMonthDate = "2022-09";
		//let displayedMonths = [
			//currentMonthYear.getFullYear() + '-' + (currentMonthYear.getMonth() + 1),
			//nextMonthYear.getFullYear() + '-' + (nextMonthYear.getMonth() + 1)];
		
	
		let dateExpression = "/20[0-9]{2}-[0-1][0-9]-[0-3][0-9]/";
		//let checkInDate = document.getElementById("checkin").value;
		//let checkOutDate = document.getElementById("checkout").value;
		//let checkInDate = "";
		//let checkOutDate = "";
		//let leftMonthDate = "2022-09";
		let displayedMonths = ["2022-09", "2022-10"];
		//console.log("test1");
		
		const NUMBER_OF_CALENDARS = 2;
		const maxWidth = 7;
		const maxHeight = 6;
		const days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
		
		
		
		function monthToString(month) {
			let string = "";
			switch(month) {
			case 0:
				string = "January";
				break;
			case 1:
				string = "February";
				break;
			case 2:
				string = "March";
				break;
			case 3:
				string = "April";
				break;
			case 4:
				string = "May";
				break;
			case 5:
				string = "June";
				break;
			case 6:
				string = "July";
				break;
			case 7:
				string = "August";
				break;
			case 8:
				string = "September";
				break;
			case 9:
				string = "October";
				break;
			case 10:
				string = "November";
				break;
			case 11:
				string = "December";
				break;
			}
			return string;
		}
		
		function initializeCalendars() {
			
			//let date = new Date(firstDisplayMonth.getFullYear(), firstDisplayMonth.getMonth());
			
			//Initialize the calendars.
			for(let c = 0; c < NUMBER_OF_CALENDARS; c++) {
				let date = new Date(firstDisplayMonth.getFullYear(), firstDisplayMonth.getMonth() + c);
				
				//div for entire calendar, which contains the month/year and the gui.
				let calendar = document.createElement("div");
				console.log(calendar);
					
					//Display the month and year.
					let stringMonth = document.createElement("div");
					stringMonth.classList.add("center");
						let text = document.createTextNode(monthToString(date.getMonth()) + " " + date.getFullYear());
					stringMonth.appendChild(text);
						
				calendar.appendChild(stringMonth);
					
					//Initialize the table and its spots.
					let tableCalendar = document.createElement("table");
					tableCalendar.id = date.getFullYear() + '-' + (date.getMonth() + 1 + '').padStart(2, "0");
						let trDays = document.createElement("tr");
						
						//The first row contains the days of the week.
						for(let i = 0; i < days.length; i++) {
							let tdDay = document.createElement("td");
							tdDay.appendChild(document.createTextNode(days[i]));
							trDays.appendChild(tdDay);
						}
						
					tableCalendar.appendChild(trDays);
						
						//The remaining rows are reserved for the dates.
						for(let i = 0; i < maxHeight; i++) {
							let trWeek = document.createElement("tr");
							
							for(let j = 0; j < maxWidth; j++) {
								let tdDate = document.createElement("td");
								tdDate.classList.add("td-invisable");
								trWeek.appendChild(tdDate);
							}
							
							tableCalendar.appendChild(trWeek);
						}
				
				calendar.appendChild(tableCalendar);
				
				//Display the calendar.
				let calendarDisplay = document.getElementById("displayed-calendars");
				calendarDisplay.appendChild(calendar);
			}
			
			
			
			/*let calendar = "<table id=\"2022-09\">" +
						"<tr><td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td></tr>";*/
			/*let date = new Date();
			date.setYear(year);
			date.setMonth(month);
			date.setDate(1);
			let column = date.getDay() + 1;
			
			calendar += "<tr>";
			for (let space = 1; space < column; space++) {
				calendar += "<td class=\"td-invisable\"></td>";
			}
			
			//Get the date for the last day of the month.
			let temp = new Date();
			temp.setMonth(month + 1);
			temp.setDate(0);
			
			console.log((month + 1 < 10) ? ("0" + month) : month);
			
			let max = temp.getDate();
			for(let day = 1; day <= max; day++) {
				let stringDate = '' + (year < 1000 ? "0" + year : year) + "-" + ((month + 1) < 10 ? "0" + (month + 1) : month + 1) + "-" + (day < 10 ? "0" + day : day);
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
			
			return calendar;*/
		}
		
		function removeClassNames(element) {
			if(element.classList.length = 0) {
				element.classList.remove(element.classList);//<- https://code-paper.com/javascript/examples-javascript-classlist-remove-all-class
			}
		}
		
		function updateCalendar() {
			//let date = new Date();
			//date.setYear(leftMonth.substring(0, 4));
			//date.setMonth(leftMonth.substring(5, 7));
			//let date = new Date(2022, 8, 1);
			//date.setYear(year);
			//date.setMonth(month);
			//date.setDate(1);
			
			for(let c = 0; c < NUMBER_OF_CALENDARS; c++) {
				let date = new Date(firstDisplayMonth.getFullYear(), firstDisplayMonth.getMonth() + c);
				
				let stringMonth = date.getFullYear() + '-' + (date.getMonth() + 1 + '').padStart(2, "0");
				let tableCalendar = document.getElementById(stringMonth);
				
				//Skip the first seven td elements because they are the days of the week.
				const tdElements = tableCalendar.getElementsByTagName("td");
				const tdDates = [];
				
				for(let i = days.length; i < tdElements.length; i++) {
					tdDates.push(tdElements[i]);
				}
				
				//Set all spots that appear before the first day to be invisable.
				let count = 0;
				let column = date.getDay();
				for (; count < column; count++) {
					tdDates[count].id = "";
					tdDates[count].setAttribute("class", "");
					tdDates[count].removeAttribute("onclick");
					tdDates[count].classList.add("td-invisable");
					
				}
				
				//Get the date for the last day of the month.
				let temp = new Date(date.getFullYear(), date.getMonth() + 1, 0);
				let max = temp.getDate();
				
				//Set all the dates.
				for(; count < max + column; count++) {
					let stringDate = stringMonth + "-" + ((count - column + 1) + "").padStart(2, "0");
					
					tdDates[count].id = stringDate;
					tdDates[count].setAttribute("class", "");
					tdDates[count].setAttribute("onclick", "dateSelect('"+stringDate+"')");
					
					//Set the date number.
					let textNode = document.createTextNode((count - column + 1));
					if(tdDates[count].hasChildNodes()) {
						tdDates[count].replaceChild(textNode, tdDates[count].childNodes[0]);
					} else {
						tdDates[count].appendChild(textNode);
					}
					
					//Set whether the date is disabled.
					if(!isValidStringDate(stringDate)) {
						tdDates[count].classList.add("calendar-date-disabled");
					}
					
					
					//Determine whether the date should be highlighted.
					if(stringDate.localeCompare(checkInDate) === 0 || stringDate.localeCompare(checkOutDate) === 0) {
						tdDates[count].classList.add("enabled");
					} else if((checkInDate != "" && checkOutDate != "") && (checkInDate.localeCompare(stringDate) < 0 && stringDate.localeCompare(checkOutDate) < 0)) {
						tdDates[count].classList.add("between-enabled");
					}
					
				}
				
				//Set all spots that appear after the last day to be invisable.
				console.log(count);
				for(; count < maxHeight * maxWidth; count++) {
					tdDates[count].id = "";
					tdDates[count].setAttribute("class", "");
					tdDates[count].removeAttribute("onclick");
					tdDates[count].classList.add("td-invisable");
				}
			}
			
			
		}
		
		function setCheckDates(stringDate) {
			if(checkInDate !== "" && checkOutDate !== "") {
				if(stringDate.localeCompare(checkInDate) === 0) {
					//If selected date is the current checkin date, then unselect the date.
					//checkInDateElement.className = "";
					checkInDate = "";
				} else if(stringDate.localeCompare(checkOutDate) === 0) {
					//If selected date is the current checkin date, then unselect the date.
					//checkOutDateElement.className = "";
					checkOutDate = "";
				} else if(stringDate.localeCompare(checkInDate) < 0) {
					//If selected date is less than the current checkin date, then set the checkin date to the selected date.
					//checkInDateElement.className = "";
					//selectedDateElement.className = "enabled";
					checkInDate = stringDate;
				} else if(stringDate.localeCompare(checkOutDate) < 0) {
					//If selected date is less than the current checkout date, then set the checkout date to the selected date.
					//checkOutDateElement.className = "";
					//selectedDateElement.className = "enabled";
					checkOutDate = stringDate;
				} else if(stringDate.localeCompare(checkOutDate) > 0) {
					//If selected date is greater than the current checkout date, then set the checkout date to the selected date.
					//checkOutDateElement.className = "";
					//selectedDateElement.className = "enabled";
					checkOutDate = stringDate;
				} else {
					//Uh oh.
					checkInDate = "";
					checkOutDate = "";
				}
			} else if(checkInDate !== "" && checkOutDate === "") {
				if(stringDate.localeCompare(checkInDate) === 0) {
					//If selected date is the current checkin date, then unselect the date.
					//checkInDateElement.className = "";
					checkInDate = "";
				} else if(stringDate.localeCompare(checkInDate) < 0) {
					//If selected date is before checkin date, then checkin date becomes checkout date and checkin date becomes selected date.
					checkOutDate = checkInDate;
					checkInDate = stringDate;
					//selectedDateElement.className = "enabled";
				} else {
					//Otherwise, the checkout date is the selected date.
					checkOutDate = stringDate;
					//selectedDateElement.className = "enabled";
				}
			} else if(checkInDate === "" && checkOutDate !== "") {
				if(stringDate.localeCompare(checkOutDate) === 0) {
					//If selected date is the current checkout date, then unselect the date.
					//checkOutDateElement.className = "";
					checkOutDate = "";
				} else if(stringDate.localeCompare(checkOutDate) > 0) {
					//If selected date is after checkout date, then checkout date becomes checkin date and checkin date becomes selected date.
					checkInDate = checkOutDate;
					checkOutDate = stringDate;
					//selectedDateElement.className = "enabled";
				} else {
					//Otherwise, the checkin date is the selected date.
					checkInDate = stringDate;
					//selectedDateElement.className = "enabled";
				}
			} else if(checkInDate === "" && checkOutDate === "") {
				//If neither checkin date nor the checkout date have been selected, then the checkin date is the selected date.
				checkInDate = stringDate;
				//selectedDateElement.className = "enabled";
			} else {
				//Uh oh.
				checkInDate = "";
				checkOutDate = "";
			}
		}
		
		function dateSelect(date) {
			console.log("---dateSelect---");
			console.log(checkInDate);
			console.log(checkOutDate);
			console.log(date);
			
			//console.log(date);
			//let selectedDateElement = document.getElementById("month1").getElementById(date);
			let selectedDateElement = date !== "" ? document.getElementById(date) : null;
			let checkInDateElement = checkInDate !== "" ? document.getElementById(checkInDate) : null;
			let checkOutDateElement = checkOutDate !== "" ? document.getElementById(checkOutDate) : null;
			let stringDate = date;
			/*if(date === "") {
				
			} else {
				let selectedDateElement = document.getElementById(date);
				let checkInDateElement = checkInDate !== "" ? document.getElementById(checkInDate) : null;
				let checkOutDateElement = checkOutDate !== "" ? document.getElementById(checkOutDate) : null;
				let stringDate = date;
			}*/
			
			if(!isValidStringDate(stringDate)) {
				return;
			}
			
			
			setCheckDates(stringDate);
			
			//console.log(checkInDate);
			//console.log(checkOutDate);
			
			console.log(checkInDate);
			console.log(checkOutDate);
			console.log(date);
			console.log("-------------------");
			
			document.getElementById("checkin").value = checkInDate;
			document.getElementById("checkout").value = checkOutDate;
			
			updateCalendar();
		}
		
		function isStringDate(stringDate) {
			let parts = date.split("-");
			
			if (parts.length !== 3) {
				return false;
			}
			
			let year = parts[0];
			let month = parts[1];
			let day = parts[2];
			
			if(Number.isInteger(year) && year.length === 4 &&
					Number.isInteger(month) && year.length === 2 &&
					Number.isInteger(day) && year.length === 2
					) {
				return true;
			} else {
				return false;
			}
		}
		
		function isWithinStringDateRange(stringDate) {
			let stringCurrentDate =
				currentDate.getFullYear() + '-' +
				(currentDate.getMonth() + 1 + '').padStart(2, "0") + '-' +
				(currentDate.getDate() + '').padStart(2, "0");
			if(stringDate.localeCompare(stringCurrentDate) >= 0) {
				return true;
			} else {
				return false;
			}
		}
		
		function isValidStringDate(stringDate) {
			if(stringDate !== "" && isWithinStringDateRange(stringDate)) {
				return true;
			} else {
				return false;
			}
		}
		
		function dateSelectManual(caller) {
			console.log("---dateSelectManual---");
			console.log(caller);
			console.log(checkInDate);
			console.log(checkOutDate);
			
			
			checkInElement = document.getElementById("checkin");
			checkOutElement = document.getElementById("checkout");
			let enteredDateElement = document.getElementById(caller);
			let otherDateElement = null;
			let otherDate = "";
			if(caller === "checkin") {
				otherDateElement = document.getElementById("checkout");
			} else if (caller === "checkout") {
				otherDateElement = document.getElementById("checkin");
			}
			otherDate = otherDateElement.value;
			
			checkInDate = checkInElement.value;
			checkOutDate = checkOutElement.value;
			
			let enteredDate = enteredDateElement.value;
			console.log(enteredDate);
			/*if(enteredDate === "") {
				//Let it keep focus.
			} else {
				//The purpose of this if statement is to see if the typed in date is valid.
				//When a customer enters the first digit of the year with the month and day sections filled in,
				//the year will be considered valid, so this prevents bad years from being entered.
				if(isValidStringDate(enteredDate)) {
					document.getElementById(caller).blur();
				} else {
					//Let it keep focus.
				}
			}*/
			
			//The purpose of this if statement is to see if the typed in date is valid.
			//When a customer enters the first digit of the year with the month and day sections filled in,
			//the year will be considered valid, so this prevents bad years from being entered.
			/*console.log(isValidStringDate(enteredDate));
			if(!isValidStringDate(enteredDate)) {
				return;
			}*/
			
			
			
			//checkInDate = document.getElementById("checkin").value;
			//checkOutDate = document.getElementById("checkout").value;
			
			//document.getElementById(caller).blur();
			
			//setCheckDates(enteredDate);
			
			if(isValidStringDate(checkInElement.value) && isValidStringDate(checkOutElement.value)) {
				console.log("valid valid");
				let comparison = checkInElement.value.localeCompare(checkOutElement.value);
				if(comparison < 0) {
					checkInDate = checkInElement.value;
					checkOutDate = checkOutElement.value;
				} else if(comparison === 0) {
					enteredDateElement.blur();
					enteredDateElement.value = "";
					enteredDateElement.focus();
					
					checkInDate = checkInElement.value;
					checkOutDate = checkOutElement.value;
				} else {
					enteredDateElement.blur();
					let temp = checkInElement.value;
					checkInElement.value = checkOutElement.value;
					checkOutElement.value = temp;
					enteredDateElement.focus();
					
					checkInDate = checkInElement.value;
					checkOutDate = checkOutElement.value;
				}
			} else if(!isValidStringDate(checkInElement.value) && isValidStringDate(checkOutElement.value)) {
				console.log("invalid valid");
				checkInDate = "";
				checkOutDate = checkOutElement.value;
			} else if(isValidStringDate(checkInElement.value) && !isValidStringDate(checkOutElement.value)) {
				console.log("valid invalid");
				//enteredDateElement.blur();
				//otherDateElement.value = "";
				//otherDateElement.focus();
				
				checkInDate = checkInElement.value;
				checkOutDate = "";
				
				checkOutElement.focus();
			} else if(!isValidStringDate(checkInElement.value) && !isValidStringDate(checkOutElement.value)) {
				console.log("invalid invalid");
				/*if(isStringDate(enteredDate)) {
					enteredDateElement.blur();
					enteredDateElement.value = "";
					enteredDateElement.focus();
				}*/
				checkInElement.validity
				checkInDate = "";
				checkOutDate = "";
			}
			
			/*if(isValidStringDate(enteredDate) && isValidStringDate(otherDate)) {
				if(enteredDate.localeCompare(otherDate) < 0) {
					checkInDate = enteredDateElement.value;
					checkOutDate = otherDateElement.value;
				} else if(enteredDate.localeCompare(otherDate) === 0) {
					enteredDateElement.blur();
					enteredDateElement.value = "";
					enteredDateElement.focus();
				} else {
					enteredDateElement.blur();
					enteredDateElement.value = otherDateElement.value;
					otherDateElement.value = enteredDate;
					//enteredDateElement.focus();
					
					checkInDate = otherDateElement.value;
					checkOutDate = enteredDateElement.value;
				}
			} else if(!isValidStringDate(enteredDate) && isValidStringDate(otherDate)) {
				checkInDate = checkInElement.value;
				checkOutDate = checkOutElement.value;
			} else if(isValidStringDate(enteredDate) && !isValidStringDate(otherDate)) {
				enteredDateElement.blur();
				otherDateElement.value = "";
				otherDateElement.focus();
				
				checkInDate = checkInElement.value;
				checkOutDate = checkOutElement.value;
			} else if(!isValidStringDate(enteredDate) && !isValidStringDate(otherDate)) {
				if(isStringDate(enteredDate)) {
					enteredDateElement.blur();
					enteredDateElement.value = "";
					enteredDateElement.focus();
				}
				
				checkInDate = "";
				checkOutDate = "";
			}*/
			
			/*checkInDate = checkInDateElement.value;
			checkOutDate = checkOutDateElement.value;*/
			
			/*let comparison = enteredDateElement.value.localeCompare(otherDateElement.value);
			if(comparison > 0) {
				console.log("> 0 entered");
				checkInDate = otherDateElement.value;
				checkOutDate = enteredDateElement.value;
			} else if(comparison === 0) {
				console.log("=== 0 entered");
				checkOutDate = "";
			} else {
				//Then everything is okay.
			}*/
			
			/*let comparison = checkInDate.localeCompare(checkOutDate);
			if(comparison > 0) {
				console.log("> 0 entered");
				let temp = checkInDate;
				checkInDate = checkOutDate;
				checkOutDate = temp;
			} else if(comparison === 0) {
				console.log("=== 0 entered");
				checkOutDate = "";
			} else {
				//Then everything is okay.
			}*/
			
			/*if(caller === "checkin") {
				dateSelect(document.getElementById("checkin").value);
			} else if(caller === "checkout"){
				dateSelect(document.getElementById("checkout").value);
			}*/
			
			console.log(caller);
			console.log(checkInDate);
			console.log(checkOutDate);
			console.log("-------------------");
			
			//checkInElement.value = isValidStringDate(checkInDate) ? checkInDate : "";
			//checkOutElement.value = isValidStringDate(checkOutDate) ? checkOutDate : "";;
			updateCalendar();
			
			/*console.log(checkInDate + ':' + checkOutDate);
			
			checkInDate = document.getElementById("checkin").value;
			
			console.log(checkInDate + ':' + checkOutDate);
			
			checkOutDate = document.getElementById("checkout").value;
			
			console.log(checkInDate + ':' + checkOutDate);
			
			let comparison = checkInDate.localeCompare(checkOutDate);
			if(comparison > 0) {
				console.log("> 0 entered");
				let temp = checkInDate;
				checkInDate = checkOutDate;
				checkOutDate = temp;
			} else if(comparison === 0) {
				console.log("=== 0 entered");
				checkOutDate = "";
			} else {
				//Then everything is okay.
			}*/
			
			/*document.getElementById("checkin").value = checkInDate;
			document.getElementById("checkout").value = checkOutDate;
			
			console.log(checkInDate + ':' + checkOutDate);
			
			updateCalendar();
			
			lastCaller = caller;
			console.log(lastCaller);*/
		}
		
		initializeCalendars();
		dateSelect(document.getElementById("checkin").value);
		dateSelect(document.getElementById("checkout").value);
		updateCalendar();
	</script>
	
</body>
</html>