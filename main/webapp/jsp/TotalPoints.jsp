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
			out.print(countPoints);
		} 
}
catch (Exception e){
	e.printStackTrace();
}
%>