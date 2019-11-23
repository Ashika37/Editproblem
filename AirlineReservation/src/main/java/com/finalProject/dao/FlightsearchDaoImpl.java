package com.finalProject.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalProject.entity.FlightSearch;

@Repository("FlightsearchDao")
public class FlightsearchDaoImpl extends AbstractDao<Long, FlightSearch> implements FlightsearchDao{

	@Override
	public List<FlightSearch> getAllFlightDetails() {
		List<FlightSearch> flightsearch = getEntityManager().createQuery("SELECT u FROM FlightSearch u ").getResultList();
		return flightsearch;
	}

	@Override
	public FlightSearch getFlightById(Long id) {
		FlightSearch flightsearch =(FlightSearch) getEntityManager()
                .createQuery("SELECT u FROM FlightSearch u WHERE u.flight_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();		
		return flightsearch;
	}

	@Override
	public boolean saveFlight(FlightSearch flightsearch) {
		persist(flightsearch);
		return true;
	}

	
	
	@Override
	public boolean deleteFlightById(Long id) {
		FlightSearch flightsearch=(FlightSearch) getEntityManager()
                .createQuery("SELECT u FROM FlightSearch u WHERE u.flight_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();
		delete(flightsearch);
		return true;
	}

	@Override
	public boolean editFlightById(Long id) {
		FlightSearch flightsearch =(FlightSearch) getEntityManager()
                .createQuery("SELECT u FROM FlightSearch u WHERE u.flight_id LIKE :Id")
                .setParameter("Id",id)
                .getSingleResult();		
		update(flightsearch);
		return true;
	}
	
	@Override
	public List<FlightSearch> findByFirstnameAndLastName(String from_loc, String to_loc) {
		List<FlightSearch> flightsearchByName=getEntityManager().createQuery("SELECT u FROM FlightSearch u WHERE u.from_loc LIKE :from_loc AND u.to_loc LIKE :to_loc", FlightSearch.class).setParameter("from_loc", from_loc)
				.setParameter("to_loc", to_loc).getResultList();
		
		
		return flightsearchByName;
	}

}
