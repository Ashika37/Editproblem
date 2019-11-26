package com.finalProject.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Passenger")
public class Passenger {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="pass-seq")
	@SequenceGenerator(name="pass-seq",sequenceName="pass_seq",allocationSize=1)
	
	private long passenger_id;
	private String passenger_name;
	private String gender;	
	private String passenger_surname;
	private String salutation;
	private String seat_no;
	private int flight_id;
	private int mobile_no;
	private String email_id;
	
	public long getPassenger_id() {
		return passenger_id;
	}
	public void setPassenger_id(long passenger_id) {
		this.passenger_id = passenger_id;
	}
	public String getPassenger_name() {
		return passenger_name;
	}
	public void setPassenger_name(String passenger_name) {
		this.passenger_name = passenger_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassenger_surname() {
		return passenger_surname;
	}
	public void setPassenger_surname(String passenger_surname) {
		this.passenger_surname = passenger_surname;
	}
	public String getSalutation() {
		return salutation;
	}
	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}
	
	public String getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public int getFlight_id() {
		return flight_id;
	}
	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}
	public int getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(int mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	@Override
	public String toString() {
		return "Passenger [passenger_id=" + passenger_id + ", passenger_name=" + passenger_name + ", gender=" + gender
				+ ", passenger_surname=" + passenger_surname + ", salutation=" + salutation + ", seat_no=" + seat_no
				+ ", flight_id=" + flight_id + ", mobile_no=" + mobile_no + ", email_id=" + email_id + "]";
	}

	

}
