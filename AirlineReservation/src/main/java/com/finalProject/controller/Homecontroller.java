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

import com.finalProject.entity.FlightSearch;
import com.finalProject.entity.Passenger;
import com.finalProject.entity.Payment;
import com.finalProject.service.FlightService;
import com.finalProject.service.PassengerService;

@Controller
public class Homecontroller {
	
	@Autowired
	PassengerService ser;
	
	@Autowired
	FlightService fsp;
	
	@RequestMapping(value = { "/", "/homepage" }, method = RequestMethod.GET)
	public ModelAndView hello(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homepage");
		return mv;
	}

	
	@RequestMapping(value = { "/", "/Seatselection" }, method = RequestMethod.GET)
	public ModelAndView hello3(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Seatselection");
		return mv;
	}

	
	
	@RequestMapping(value = { "/", "/Payment" }, method = RequestMethod.GET)
	public ModelAndView hello5(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Payment");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/Login" }, method = RequestMethod.GET)
	public ModelAndView hello6(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/allFlightList" }, method = RequestMethod.GET)
	public ModelAndView hello7(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addPassenger");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/Ticket" }, method = RequestMethod.GET)
	public ModelAndView hello19(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Ticket");
		return mv;
	}
	
	@RequestMapping(value = {"/Ticket" }, method = RequestMethod.POST)
	public ModelAndView ticket(@ModelAttribute Payment pay, BindingResult result ){
		
		ModelAndView mv=new ModelAndView("Ticket");
		long passenger_id = pay.getPassenger_id();
		long flight_id = pay.getFlight_id();
		Passenger pas = ser.getPassengerById(passenger_id);
		FlightSearch fs = fsp.getFlightById(flight_id);
		mv.addObject("passenger", pas);
		mv.addObject("flightdetails", fs);
		//mv.setViewName("ticket");
		return mv;
	}

	
	/*@RequestMapping(value = { "/", "/SeatBook" }, method = RequestMethod.GET)
	public ModelAndView hello4(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SeatBook");
		return mv;
	}
	@RequestMapping(value = { "/", "/newseatselect1" }, method = RequestMethod.GET)
	public ModelAndView hello1(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newseatselect1");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/flightdetail" }, method = RequestMethod.GET)
	public ModelAndView hello2(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("flightdetail");
		return mv;
	}*/
	
}
