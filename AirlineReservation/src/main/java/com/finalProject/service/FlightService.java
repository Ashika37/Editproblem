package com.finalProject.service;


import java.util.List;

import com.finalProject.entity.FlightSearch;
public interface FlightService {
	
	public List<FlightSearch> getAllFlightDetails();
	public FlightSearch getFlightById(Long id);
	public boolean saveFlight(FlightSearch flightsearch);
	public boolean deleteFlightById(Long id);
	public List<FlightSearch> findByFirstnameAndLastName(String from_loc, String to_loc);
	public boolean editFlightById(Long id);
}
