<%@ page import="java.sql.*" %>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/provisodb","ProvisoUser","password");     
	Statement st=con.createStatement();
	String strQuery = "SELECT SUM(earned_points) FROM reservations";
	ResultSet rs = st.executeQuery(strQuery);
					
	int countPoints;
		while(rs.next()){
			countPoints = rs.getInt(1);
			
			if (countPoints > 10000) {
				out.println("<img src='img/Diamond.png' alt='Tier: Diamond'>");
			} 
			else if (countPoints > 4999) {
				out.println("<img src='img/Gold.png' alt='Tier: Gold'>");
			}
			else if (countPoints > 999) {
				out.println("<img src='img/Silver.png' alt='Tier: Silver'>");
			}
			else {
				out.println("<img src='img/Member.png' alt='Tier: Member'>");
			}
		}
}

catch (Exception e){
	e.printStackTrace();
}
%>