package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

public class DataManager {
	private String dbURL = "";
	private String dbUserName = "";
	private String dbPassword = "";
	private Connection conn = null;
	
	public void setDbURL(String dbURL) {
	    this.dbURL = dbURL;
	    }
	  public String getDbURL() {
	    return dbURL;
	    }

	  public void setDbUserName(String dbUserName) {
	    this.dbUserName = dbUserName;
	    }
	  public String getDbUserName() {
	    return dbUserName;
	    }

	  public void setDbPassword(String dbPassword) {
	    this.dbPassword = dbPassword;
	    }
	  public String getDbPassword() {
	    return dbPassword;
	    }
	  
	  public void setConnection() {
		  Connection conn = null;
		  try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  conn = DriverManager.getConnection(getDbURL(),getDbUserName(),getDbPassword());
		  }
		  catch (SQLException e) {
			  System.out.println("Could not connect to DB: " + e.getMessage());
		  }
		  catch (ClassNotFoundException e ) {
			  System.out.println("Class.forName failed");
		  }
		  this.conn = conn;
	  }
	  
	  public void insertHotel(String name, String address, String city, String state, String zipcode, String phoneNumber, int standardKings, int standardQueens, int doubleQueens, int doubleFulls) {
		  try {
			  PreparedStatement stmt;
			  stmt = this.conn.prepareStatement("INSERT INTO hotels (name, address, city, state, zip_code, phone_number, standard_kings, standard_queens, double_queens, double_fulls) VALUES (?, ?, ?, ?, ?, ?, ?,? , ?, ?)");
			  stmt.setString(1, name);
			  stmt.setString(2, address);
			  stmt.setString(3, city);
			  stmt.setString(4, state);
			  stmt.setString(5, zipcode);
			  stmt.setString(6, phoneNumber);
			  stmt.setInt(7, standardKings);
			  stmt.setInt(8, standardQueens);
			  stmt.setInt(9, doubleQueens);
			  stmt.setInt(10, doubleFulls);
			  System.out.println(stmt);
			  stmt.executeUpdate();
		  }
		  catch (SQLException e) {
			  System.out.println("insert failed");
		  }
	  }
	  
	  public boolean isValidLogin(String username, String password) {
		  try {
			  PreparedStatement stmt;
			  stmt = this.conn.prepareStatement("SELECT COUNT(*) FROM customers WHERE email = ? and pword = ?");
			  stmt.setString(1, username);
			  stmt.setString(2, password);
			  ResultSet result = stmt.executeQuery();
			  result.next();
			  if (result.getInt("count(*)") == 1) {
				  return true;
			  }
		  }
		  catch (SQLException e) {
			  System.out.println("Query failed");
		  }
		  return false;
	  }
	  
	  public boolean insertCustomer(String firstName, String lastName, String email, String pword, String phoneNumber) {
		  try {
			  PreparedStatement stmt;
			  stmt = this.conn.prepareStatement("INSERT INTO customers (first_name, last_name, email, pword, phone_number) VALUES (?,?,?,?,?)");
			  stmt.setString(1, firstName);
			  stmt.setString(2, lastName);
			  stmt.setString(3, email);
			  stmt.setString(4, pword);
			  stmt.setString(5, phoneNumber);
			  System.out.println(stmt);
			  stmt.executeUpdate();
			  return true;
		  }
		  catch (SQLException e) {
			  System.out.println("insert failed");
			  return false;
		  }
	  }
	
}
