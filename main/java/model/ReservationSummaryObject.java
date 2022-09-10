package model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReservationSummaryObject {
	private String firstName;
	private String lastName;
	private int reservationID;
	private Date check_in;
	private Date check_out;
	private int earnedPoints;
	private boolean canceled;
	private String roomType;
	private int amount;
	private int stayDays;
	
	public ReservationSummaryObject(ResultSet data) throws SQLException{
		data.next();		
		this.firstName = data.getString(1);
		this.lastName = data.getString(2);
		this.reservationID = data.getInt(3);
		this.check_in = data.getDate(4);
		this.check_out = data.getDate(5);
		this.earnedPoints = data.getInt(6);
		this.roomType = data.getString(7);
		this.amount = data.getInt(8);
	}
	
	public String getFirstName() {
		return this.firstName;
	}
	
	public String getLastName() {
		return this.lastName;
	}
	
	public int getReservationID() {
		return this.reservationID;
	}
	
	public Date getCheckIn() {
		return this.check_in;
	}
	
	public Date getCheckOut() {
		return this.check_out;
	}
	
	public int getEarnedPoints() {
		return this.earnedPoints;
	}
	
	public String getRoomType() {
		return this.roomType;
	}
	
	public int getAmount() {
		return this.amount;
	}
	
	public void setStayDays(int days) {
		this.stayDays = days;
	}
	
	public int getStayDates() {
		return this.stayDays;
	}
 }
