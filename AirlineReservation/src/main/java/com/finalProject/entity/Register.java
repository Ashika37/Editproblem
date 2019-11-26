package com.finalProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Register")
public class Register {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="registration")
	@SequenceGenerator(name="registration",sequenceName="reg_no",allocationSize=1)
	private long reg_id;
	private String firstname;
	private String lastname;
	private long mobile_no;
	private String email_id;
	private String Password;
	public long getReg_id() {
		return reg_id;
	}
	public void setReg_id(long reg_id) {
		this.reg_id = reg_id;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public long getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(long mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Register [reg_id=" + reg_id + ", firstname=" + firstname + ", lastname=" + lastname + ", mobile_no="
				+ mobile_no + ", email_id=" + email_id + ", Password=" + Password + "]";
	}
	
}
