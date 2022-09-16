package model;

import java.sql.Date;

public class Reservation {
	private Date checkIn;
	private Date checkOut;
	private String location;
	private String roomType;
	private int guests;
	private String nameOnCard;
	private boolean wifi;
	private boolean breakfast;
	private boolean parking;
	private long cardNumber;
	private String exp;
	private int customerId;
	private int reservationID;
	private int holidays;
	
	public void setReservationID(int n) {
		this.reservationID = n;
	}
	
	public int getReservationID() {
		return this.reservationID;
	}
	
	public void setCheckIn(String checkIn) {
		this.checkIn = Date.valueOf(checkIn);
	}
	
	public Date getCheckIn() {
		return this.checkIn;
	}
	
	public void setCheckOut(String checkOut) {
		this.checkOut = Date.valueOf(checkOut);
	}
	
	public Date getCheckOut() {
		return this.checkOut;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getLocation() {
		return this.location;
	}
	
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	
	public String getRoomType() {
		return this.roomType;
	}
	
	public void setGuests(int n) {
		this.guests = n;
	}
	
	public int getGuests() {
		return this.guests;
	}
	
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	
	public String getNameOnCard() {
		return this.nameOnCard;
	}
	
	public void setWifi(String wifi) {
		if (wifi == null) {
			this.wifi = false;
		}
		else if (wifi.equals("on")) {
			this.wifi = true;
		}
		else {
			System.out.println("Error determining wifi status");
		}
	}
	
	public boolean getWifi() {
		return this.wifi;
	}
	
	public void setBreakfast(String breakfast) {
		if (breakfast == null) {
			this.breakfast = false;
		}
		else if (breakfast.equals("on")) {
			this.breakfast = true;
		}
		else {
			System.out.println("Error determining breakfast status");
		}
	}
	
	public boolean getBreakfast() {
		return this.breakfast;
	}
	
	public void setParking(String parking) {
		if (parking == null) {
			this.parking = false;
		}
		else if (parking.equals("on")) {
			this.parking = true;
		}
		else {
			System.out.println("Error determining parking status");
		}
	}
	
	public boolean getParking() {
		return this.parking;
	}
	
	public void setCardNumber(String cardNumber) {
		this.cardNumber = Long.valueOf(cardNumber);
	}
	
	public long getCardNumber() {
		return this.cardNumber;
	}
	
	public void setExp(String exp) {
		this.exp = exp;
	}
	
	public String getExp() {
		return this.exp;
	}
	
	public void setCustomerId(int customerID) {
		this.customerId = customerID;
	}
	
	public int getCustomerId() {
		return this.customerId;
	}
	
	
}
