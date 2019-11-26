package com.finalProject.entity;

public class Payment {
	long passenger_id;	
	long flight_id;	
	public Payment() {
		super();
	}
	public long getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(long flight_id) {
		this.flight_id = flight_id;
	}
	public Payment(long flight_id) {
		super();
		this.flight_id = flight_id;
	}
	public long getPassenger_id() {
		return passenger_id;
	}
	public void setPassenger_id(long passenger_id) {
		this.passenger_id = passenger_id;
	}
}
