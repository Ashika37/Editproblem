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
	private String passenger_salutation;
	private String passenger_name;
	private String passenger_sirname;
	private String gender;
	
	public Passenger() {
		
	}
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
	public String getPassenger_salutation() {
		return passenger_salutation;
	}
	public void setPassenger_salutation(String passenger_salutation) {
		this.passenger_salutation = passenger_salutation;
	}
	public String getPassenger_sirname() {
		return passenger_sirname;
	}
	public void setPassenger_sirname(String passenger_sirname) {
		this.passenger_sirname = passenger_sirname;
	}
	@Override
	public String toString() {
		return "Passenger [passenger_id=" + passenger_id + ", passenger_salutation=" + passenger_salutation
				+ ", passenger_name=" + passenger_name + ", passenger_sirname=" + passenger_sirname + ", gender="
				+ gender + "]";
	}
	
	
	
	
	
}
