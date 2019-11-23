package com.finalProject.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Homecontroller {
	@RequestMapping(value = { "/", "/homepage" }, method = RequestMethod.GET)
	public ModelAndView hello(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("homepage");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/Login" }, method = RequestMethod.GET)
	public ModelAndView hello1(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/flightdetail" }, method = RequestMethod.GET)
	public ModelAndView hello2(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("flightdetail");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/SeatBook" }, method = RequestMethod.GET)
	public ModelAndView hello3(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SeatBook");
		return mv;
	}
}
