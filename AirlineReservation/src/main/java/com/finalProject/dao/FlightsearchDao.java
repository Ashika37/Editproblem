package com.finalProject.dao;

import java.util.List;

import com.finalProject.entity.FlightSearch;

public interface FlightsearchDao {
	public List<FlightSearch> getAllFlightDetails();
	public FlightSearch getFlightById(Long id);
	public boolean saveFlight(FlightSearch flightsearch);
	public boolean deleteFlightById(Long id);
	public boolean editFlightById(Long id);	 
	public List<FlightSearch> findByFirstnameAndLastName(String from_loc, String to_loc, String flight_date);
}
