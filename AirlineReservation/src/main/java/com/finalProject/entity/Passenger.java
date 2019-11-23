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
	public void setPassenger_sirname(String passenger_sirname) {
		this.passenger_surname = passenger_sirname;
	}
	public String getSalutation() {
		return salutation;
	}
	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}
	@Override
	public String toString() {
		return "Passenger [passenger_id=" + passenger_id + ", passenger_name=" + passenger_name + ", gender=" + gender
				+ ", passenger_surname=" + passenger_surname + ", salutation=" + salutation + "]";
	}
}
