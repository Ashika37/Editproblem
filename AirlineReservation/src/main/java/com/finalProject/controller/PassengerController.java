package com.finalProject.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.entity.Passenger;

import com.finalProject.service.PassengerService;

@Controller
public class PassengerController {
	
private PassengerService passengerservice;
	
	public PassengerController(){
		
	}
	
	@Autowired
	public PassengerController(PassengerService passengerservice) {
		this.passengerservice = passengerservice;
	}
	
	@RequestMapping(value = "/allPassenger", method = RequestMethod.GET)
	public ModelAndView displayAllPassenger() {
		System.out.println("Admin Requested : All Passenger");
		ModelAndView mv = new ModelAndView();
		List<Passenger> passengerList = passengerservice.getAllPassenger();
		mv.addObject("passengerList", passengerList);
		mv.setViewName("allPassenger");
		return mv;
	}
	
	@RequestMapping(value = "/PassengerList", method = RequestMethod.GET)
	public ModelAndView displayAllPassenger1() {
		System.out.println("Admin Requested : All Passenger");
		ModelAndView mv = new ModelAndView();
		List<Passenger> passengerList = passengerservice.getAllPassenger();
		mv.addObject("passengerList", passengerList);
		mv.setViewName("PassengerList");
		return mv;
	}

	@RequestMapping(value = "/addPassenger", method = RequestMethod.GET)
	public ModelAndView displayNewPassengerForm() {
		ModelAndView mv = new ModelAndView("addPassenger");
		mv.addObject("headerMessage", "Add Passenger Details");
		mv.addObject("passenger", new Passenger());
		return mv;
	}
	
	@RequestMapping(value = "/addPassenger", method = RequestMethod.POST)
	public ModelAndView saveNewPassenger(@ModelAttribute Passenger passenger, BindingResult result) {
		ModelAndView mv = new ModelAndView("Payment");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = passengerservice.savePassenger(passenger);
		if (isAdded) {
			mv.addObject("message", "New Pssenger detail successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
	
	
	/*@RequestMapping(value = { "/", "/PassengerList" }, method = RequestMethod.GET)
	public ModelAndView hello09(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("PassengerList");
		return mv;
	}*/

}
