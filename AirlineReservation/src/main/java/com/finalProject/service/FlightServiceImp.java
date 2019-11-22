package com.finalProject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalProject.dao.FlightsearchDao;
import com.finalProject.entity.FlightSearch;


@Service
@Transactional
public class FlightServiceImp implements FlightService{
	
	private FlightsearchDao fsd;
	
	@Autowired
	public FlightServiceImp(FlightsearchDao fsd) {
		super();
		this.fsd = fsd;
	}

	@Override
	public List<FlightSearch> getAllFlightDetails() {
		List<FlightSearch> fs=new ArrayList<FlightSearch>();
		fs=fsd.getAllFlightDetails();
		return fs;
	}

	@Override
	public FlightSearch getFlightById(Long id) {
		FlightSearch flightsearch = fsd.getFlightById(id);
		return flightsearch;
	}

	@Override
	public boolean saveFlight(FlightSearch flightsearch) {		
		try{		
			fsd.saveFlight(flightsearch);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public boolean deleteFlightById(Long id) {
		try{
			
			fsd.deleteFlightById(id);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	@Override
	public List<FlightSearch> findByFirstnameAndLastName(String from_loc, String to_loc) 
	{
		
		List<FlightSearch> fs=new ArrayList<FlightSearch>();
		fs=fsd.findByFirstnameAndLastName(from_loc, to_loc);
		return fs;
		
	}

	@Override
	public boolean editFlightById(Long id) {
		try{	
			fsd.editFlightById(id);
			return true;
		}catch(Exception e){
			return false;
		}
	}
	
	

}
