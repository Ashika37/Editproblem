package com.finalProject.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.entity.FlightSearch;

import com.finalProject.service.FlightService;

@Controller
public class BookingController {
	
	private FlightService flightservice;
	
	
	public BookingController() {
		
	}

	@Autowired
	public BookingController(FlightService flightservice) {
		
		this.flightservice = flightservice;
	}

	@RequestMapping(value = "/homepage", method = RequestMethod.POST)
	public ModelAndView displaySearchForm() {
		ModelAndView mv = new ModelAndView("homepage");
		mv.setViewName("homepage");
		return mv;
	}
	
	@RequestMapping(value = "/allFlightList", method = RequestMethod.POST)
	public ModelAndView displayAllFlightDetail(@PathVariable("allFlightList") String from_loc, @PathVariable("allFlightList") String to_loc) {
		System.out.println("Admin Requested : All Flights");
		ModelAndView mv = new ModelAndView();
		List<FlightSearch> flightList = flightservice.findByFirstnameAndLastName(from_loc, to_loc);
		mv.addObject("fList", flightList);
		mv.setViewName("allFlightList");
		return mv;
	}
	

}
