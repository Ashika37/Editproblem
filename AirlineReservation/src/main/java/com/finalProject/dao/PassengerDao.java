package com.finalProject.dao;

import java.util.List;

import com.finalProject.entity.Passenger;

public interface PassengerDao {
	
	public List<Passenger> getAllPassenger();
	public Passenger getPassengerById(Long id);
	public boolean savePassenger(Passenger passenger);
	//public boolean deletePassengerById(Long id);
}
