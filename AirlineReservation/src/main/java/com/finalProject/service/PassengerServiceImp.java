package com.finalProject.service;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.dao.PassengerDao;
import com.finalProject.entity.Passenger;

@Service
@Transactional
public class PassengerServiceImp implements PassengerService {
	
	private PassengerDao psd;
	

	public PassengerServiceImp() {
		
	}
	
	@Autowired
	public PassengerServiceImp(PassengerDao psd) {
		super();
		this.psd = psd;
	}

	@Override
	public List<Passenger> getAllPassenger() {
		List<Passenger> ps=new ArrayList<Passenger>();
		ps=psd.getAllPassenger();
		return ps;
		
	}

	@Override
	public Passenger getPassengerById(Long id) {
		Passenger passenger = psd.getPassengerById(id);
		return passenger;
	}

	@Override
	public boolean savePassenger(Passenger passenger) {

		try{
			psd.savePassenger(passenger);
			return true;
		}
		catch(Exception ex){
			return false;
		}
	}

	/*@Override
	public boolean deletePassengerById(Long id) {
		try{
			psd.deletePassengerById(id);
			return true;
		}
		catch(Exception ex)
		{
			return false;
		}
	}*/
	
	

}
