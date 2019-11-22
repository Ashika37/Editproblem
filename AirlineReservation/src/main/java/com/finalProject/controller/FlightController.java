package com.finalProject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.entity.FlightSearch;
import com.finalProject.service.FlightService;

@Controller
@RequestMapping("/")
public class FlightController {
	
	private FlightService flightservice;
	public FlightController() {
		
	}
	
	@Autowired
	public FlightController(FlightService flightservice) {
		this.flightservice = flightservice;
	}
	
		
	@PostMapping(value = "/allFlights")
	public ModelAndView displayAllFlight() {
		System.out.println("Admin Requested : All Flights");
		ModelAndView mv = new ModelAndView();
		List<FlightSearch> flightList = flightservice.getAllFlightDetails();
		mv.addObject("flightList", flightList);
		mv.setViewName("allFlights");
		return mv;
	}
	
	@GetMapping(value = "/allFlights")
	public ModelAndView displayAllFlight1() {
		System.out.println("Admin Requested : All Flights");
		ModelAndView mv = new ModelAndView();
		List<FlightSearch> flightList = flightservice.getAllFlightDetails();
		mv.addObject("flightList", flightList);
		mv.setViewName("allFlights");
		return mv;
	}
	

	@GetMapping(value = "/addFlight")
	public ModelAndView displayNewFlightForm() {
		ModelAndView mv = new ModelAndView("addFlight");
		mv.addObject("headerMessage", "Add Flight Details");
		mv.addObject("flightdetails", new FlightSearch());
		return mv;
	}
	
	@PostMapping(value = "/addFlight")
	public ModelAndView saveNewUser(@ModelAttribute FlightSearch fsearch, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/allFlights");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = flightservice.saveFlight(fsearch);
		if (isAdded) {
			mv.addObject("message", "New flight detail successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
	
	
	@GetMapping(value = "/editFlight/{id}")
	public ModelAndView displayEditFlightForm(@PathVariable Long id) {
		ModelAndView mv = new ModelAndView("editFlight");
		FlightSearch flightsearch = flightservice.getFlightById(id);
		mv.addObject("headerMessage", "Edit Flight Details");
		mv.addObject("flightdetails", flightsearch);
		return mv;
	}
	
	
	
	@PostMapping(value = "/editFlight/{id}")
	public ModelAndView saveEditedUser(@ModelAttribute FlightSearch flightsearch, BindingResult result,@PathVariable Long id) {
	
		boolean isEdit = flightservice.editFlightById(id);
		if (result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}	
		boolean isSaved = flightservice.saveFlight(flightsearch);
		if (!isSaved) {

			return new ModelAndView("error");
		}
		ModelAndView mv = new ModelAndView("redirect:/allFlights");
		return mv;
	}
	@GetMapping(value = "/deleteFlight/{id}")
	public ModelAndView deleteFlightById(@PathVariable Long id) {
		boolean isDeleted = flightservice.deleteFlightById(id);
		System.out.println("Flight deletion respone: " + isDeleted);
		ModelAndView mv = new ModelAndView("redirect:/allFlights");
		return mv;

	}
}
