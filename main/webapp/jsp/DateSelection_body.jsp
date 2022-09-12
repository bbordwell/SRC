<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<jsp:useBean id="dateSelectionManager" scope="application" class="model.DateSelectionManager"/>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div>
			<!-- Check in/out dates -->
			<form action="/Proviso/ProvisoServlet" id="dateSelect">
				<input type="hidden" id="action" name="action" value="RoomChoice">
				<input type="date" id="checkin" name="checkin">
				<input type="date" id="checkout" name="checkout">
			</form>
			<div>Check-In</div>
			<div>Check-Out</div>
		</div>
		<div>
			<div>Month 1</div>
			<div>
				<table>
					<tr>
						<td>Sun</td>
						<td>Mon</td>
						<td>Tue</td>
						<td>Wed</td>
						<td>Thu</td>
						<td>Fri</td>
						<td>Sat</td>
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
					for(int space = 1; space < column; space++) {
						out.print("<td></td>");
					}
					int max = date.getActualMaximum(Calendar.DAY_OF_MONTH);
					for(int day = 1; day <= max; day++){
						out.print("<td>" + day + "</td>");
						
						if(column % 7 == 0 && day < max) {
							out.print("</tr>");
							
							if(day <= max) {
								out.print("<tr>");
							}
						}
						column++;
					}
					
					%>
				</table>
			</div>
		</div>
		<input type="submit" id="submit" type="submit" form="dateSelect">
	</div>
</body>
</html>