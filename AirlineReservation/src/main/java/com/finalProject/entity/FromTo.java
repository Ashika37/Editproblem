package com.finalProject.entity;

public class FromTo {
	String from;
	String to;
	String date1;
	
	
	public FromTo(String from, String to) {
		super();
		this.from = from;
		this.to = to;
		this.date1 = date1;
	}
	public FromTo() {
		super();
	}
	@Override
	public String toString() {
		return "FromTo [from=" + from + ", to=" + to + ", date=" + date1 + "]";
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
}
