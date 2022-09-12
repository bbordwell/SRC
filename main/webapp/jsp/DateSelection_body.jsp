<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style><%@include file="../WEB-INF/css/DateSelection.css"%></style>
<style>
* {
	font-family: Glacial;
}
</style>
</head>
<body>
	<div class="container">
		<div class="main center">
			<div class="center-child">
				<!-- Check in/out dates -->
				<form action="/Proviso/ProvisoServlet" id="dateSelect">
					<input type="hidden" id="action" name="action" value="RoomChoice">
					<label for="checkin">Check-In</label> <input type="date"
						id="checkin" name="checkin"> <label for="checkout">Check-Out</label>
					<input type="date" id="checkout" name="checkout">
				</form>
			</div>
			<div>
				<div class="center">
					
					<div>
						<div>September</div>
						<table>
							<tr>
								<td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
							</tr>

							<%
								/*int column = 1;
							int day = 1;
							while(true) {
							out.print("<tr>");
							while(day <= 31){
								out.print("<td>"+day+"</td>");
								if(column % 7 == 0) {
							break;
								}
								day++;
								column++;
							}
							out.print("</tr>");
							}*/
							//<a href=\"/Proviso/ProvisoServlet?action=DateSelection&dateSelect=true&day="+day+"&month="+date.get(Calendar.MONTH)+"\">"

							Calendar date = Calendar.getInstance();
							date.set(Calendar.DAY_OF_MONTH, 1);

							out.print("<tr>");
							int column = date.get(Calendar.DAY_OF_WEEK);
							for (int space = 1; space < column; space++) {
								out.print("<td class=\"td-invisable\"></td>");
							}
							int max = date.getActualMaximum(Calendar.DAY_OF_MONTH);
							for (int day = 1; day <= max; day++) {
								out.print("<td>" + day + "</td>");

								if (column % 7 == 0 && day < max) {
									out.print("</tr>");

									if (day <= max) {
								out.print("<tr>");
									}
								}
								column++;
							}
							%>
						</table>
					</div>
					
					<div>
						<div>October</div>
						<table>
							<tr>
								<td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
							</tr>

							<%
								/*int column = 1;
							int day = 1;
							while(true) {
							out.print("<tr>");
							while(day <= 31){
								out.print("<td>"+day+"</td>");
								if(column % 7 == 0) {
							break;
								}
								day++;
								column++;
							}
							out.print("</tr>");
							}*/
							//<a href=\"/Proviso/ProvisoServlet?action=DateSelection&dateSelect=true&day="+day+"&month="+date.get(Calendar.MONTH)+"\">"

							date.set(Calendar.MONTH, 9);
							date.set(Calendar.DAY_OF_MONTH, 1);

							out.print("<tr>");
							column = date.get(Calendar.DAY_OF_WEEK);
							for (int space = 1; space < column; space++) {
								out.print("<td class=\"td-invisable\"></td>");
							}
							max = date.getActualMaximum(Calendar.DAY_OF_MONTH);
							for (int day = 1; day <= max; day++) {
								out.print("<td>" + day + "</td>");

								if (column % 7 == 0 && day < max) {
									out.print("</tr>");

									if (day <= max) {
								out.print("<tr>");
									}
								}
								column++;
							}
							%>
						</table>
					</div>
				</div>

			</div>
			<input type="submit" id="submit" type="submit" form="dateSelect">
		</div>

	</div>
</body>
</html>