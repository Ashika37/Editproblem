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
import com.finalProject.entity.FromTo;
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
	public ModelAndView displayNewFlightForm() {
		ModelAndView mv = new ModelAndView("homepage");
		mv.addObject("headerMessage", "Add Flight Details");
		mv.addObject("flightdetails", new FromTo());
		return mv;
	}
	
	@RequestMapping(value="/searchform",method=RequestMethod.POST)
	public ModelAndView viewallflights(@ModelAttribute FromTo ft,BindingResult result){
		ModelAndView mv=new ModelAndView("allFlightList");
		String from_loc=ft.getFrom();
		String to_loc=ft.getTo();
		String flight_date = ft.getDate1();
		//System.out.println(from_loc+" a "+to_loc+ " b "+flight_date);
		List<FlightSearch> list=flightservice.findByFirstnameAndLastName(from_loc, to_loc,flight_date);
		mv.addObject("list", list);
		mv.setViewName("allFlightList");
		return mv;
	}
}
