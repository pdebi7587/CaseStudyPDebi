package com.sec.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sec.dao.UserDao;
import com.sec.model.User;

@Controller
public class UserController {

//	private UserDao uDao;
//
//	public UserController(UserDao uDao) {
//		super();
//		this.uDao = uDao;
//	}
//
//	public UserController() {
//		super();
//	}
//	
//	@RequestMapping(value= {"/", "/home"}, method = RequestMethod.GET)
//	public ModelAndView hello(HttpServletResponse response) throws IOException{
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("home");
//	
//		return mv;
//	}
//	
//	//Get ALL Users
//	@RequestMapping(value = "/allUsers", method=RequestMethod.POST)
//	public ModelAndView displayAllUser() {
//		System.out.println("User Page Requested: ALL Users");
//		ModelAndView mv = new ModelAndView();
//		List userList = uDao.getAllUsers();
//		mv.addObject("userList", userList);
//		mv.setViewName("allUsers");
//		
//		return mv;
//	}
//	
//	
//	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
//	public ModelAndView displayNewUserForm() {
//		ModelAndView mv = new ModelAndView("addUser");
//		mv.addObject("headerMessage", "Add User Details");
//		mv.addObject("user",new User());
//		return mv;
//	}
//	
//	
//	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
//	public ModelAndView saveNewUser(@ModelAttribute User user, BindingResult result) {
//		ModelAndView mv = new ModelAndView("redirect:/home");
//		
//		if (result.hasErrors()) {
//			return new ModelAndView("error");
//		}
//		
//		boolean isAdded = uDao.saveUser(user);
//		
//		if (isAdded) {
//			mv.addObject("message", "New user successfully added");
//		} else {
//			return new ModelAndView("error");
//		}
//		
//		return mv;
//		
//	}
//	
//	@RequestMapping(value = "/editUser/{uname}", method = RequestMethod.GET)
//	public ModelAndView displayEditUserForm(@PathVariable String uname) {
//		ModelAndView mv = new ModelAndView("/editUser");
//		User user = uDao.getUserByUsername(uname);
//		mv.addObject("headerMessage", "Edit User Details");
//		mv.addObject("user", user);
//		return mv;
//	}
//	
//	public ModelAndView saveEditedUser(@ModelAttribute User user, BindingResult result) {
//		
//		ModelAndView mv = new ModelAndView("redirect:/home");
//		
//		if(result.hasErrors()) {
//			System.out.println(result.toString());
//			return new ModelAndView("error");
//		}
//		
//		boolean isSaved = uDao.saveUser(user);
//		
//		if(!isSaved) {
//			return new ModelAndView("error");
//			
//		}
//		
//		return mv;
//		
//	}
//	
//	public ModelAndView deleteUserById(@PathVariable Long id) {
//		boolean isDeleted = uDao.deleteUserById(id);
//		System.out.println("User deletion response: "+isDeleted);
//		ModelAndView mv= new ModelAndView("redirect:/home");
//		return mv;
//	}
	
	
}
