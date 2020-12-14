package com.employee.controller;

 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Employees_Roles_Controller {

	@GetMapping("/")
	public String showHomePage() {
		
		
		return "home";
		
	}
	
	
	@GetMapping("/leaders")
	public String showLeaders() {
		
		
		return "leaders";
	}
	
	@GetMapping("/systems")
	public String showSystems() {
		
		return "systems";
	}
	
	
	@GetMapping("/home")
	public ModelAndView showHome() {
		ModelAndView mv = new ModelAndView( "systems");
		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);
		
		return mv;
	}
	
	@GetMapping("/about")
	public ModelAndView showAbout() {
		ModelAndView mv = new ModelAndView( "systems");
		mv.addObject("title", "About Us");
		mv.addObject("userClickAbout", true);
		
		return mv;
	}
	
	@GetMapping("/contact")
	public ModelAndView showContact() {
		ModelAndView mv = new ModelAndView( "systems");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		
		return mv;
	}
	
	
	
}
