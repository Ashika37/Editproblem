package com.finalProject.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalProject.entity.FlightSearch;
import com.finalProject.entity.Register;
import com.finalProject.service.LoginService;
import com.finalProject.service.RegisterService;

@Controller
@Qualifier("Registeruser")
@RequestMapping("/")
public class RegisterController {
	@Resource
	private RegisterService registerService;
	@Resource
    private LoginService loginService;
	
	static String name;

	public RegisterController() {

	}
	@Autowired
	public RegisterController(RegisterService registerService) {
		this.registerService = registerService;
	}
	@RequestMapping(path = "/Loginuser")
	public String registration(@RequestParam("firstname") String firstname, @RequestParam("Password") String Password,  Map model,ModelMap uname ) {
		try{
		Register register = loginService.get(firstname,Password);
		model.put("register", register);
		 name=register.getFirstname();
		 uname.addAttribute("name",name);
		
	}
		catch(Exception e){System.out.println("Wrong credentials");}
		return "homepage1";
	}

	@RequestMapping(value = "/Registeruser", method = RequestMethod.GET)
	public ModelAndView displayAllFlight() {
		System.out.println("Admin Requested : All Flights");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Registeruser");
		return mv;
	}
	
	@RequestMapping(value = { "/", "/Loginuser" }, method = RequestMethod.GET)
	public ModelAndView hello8(HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Loginuser");
		return mv;
	}
	
	@RequestMapping(value = "/Registeruser", method = RequestMethod.POST)
	public ModelAndView saveNewUser(@ModelAttribute Register register, BindingResult result) {
		ModelAndView mv = new ModelAndView("Loginuser");

		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		boolean isAdded = registerService.saveUser(register);
		if (isAdded) {
			mv.addObject("message", "New user successfully added");
		} else {
			return new ModelAndView("error");
		}

		return mv;
	}
}
