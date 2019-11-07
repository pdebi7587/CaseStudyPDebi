package com.sec.controller;

import com.sec.model.User;
import com.sec.repository.UserRepository;
//import com.sec.service.MovieService;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	UserRepository uRep;
	
	
	@RequestMapping(value = {"/", "/welcome"})
	public ModelAndView getHome(Model model, Principal principal) {
		
		ModelAndView mav = new ModelAndView("home");
		User user = uRep.findByUsername(principal.getName());
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping("/subscriber")
	public ModelAndView getSubscriber() {
		System.out.println("In the subs!");
		ModelAndView mav = new ModelAndView("subscriber");
		return mav;
	}
	
	
	@RequestMapping("/contactus")
	public ModelAndView getContact() {
		System.out.println("In contact!");
		ModelAndView mav = new ModelAndView("contact");
		return mav;
	}
	
	@RequestMapping("/admin")
	public ModelAndView getAdmin() {
		System.out.println("You are an Admin!");
		ModelAndView mav = new ModelAndView("admin");
		return mav;
	}
	
	@RequestMapping("/all")
	public ModelAndView getSudo() {
		System.out.println("You are a SUDO!");
		ModelAndView mav = new ModelAndView("all");
		return mav;
	}
	
	@RequestMapping("/403")
	public ModelAndView get403Page(Principal principal) {
		
		ModelAndView mav = new ModelAndView("403Page");
		
		if(principal != null) {
			mav.addObject("message", 
					"Hi " + principal.getName()+ ",<br><br>You don't have access to this page!");
		}else {
			mav.addObject("message", "You don't have access to this page!");
		}
		
		return mav;
	}
	
	
	
}
