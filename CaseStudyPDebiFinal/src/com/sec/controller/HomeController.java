package com.sec.controller;

import com.sec.dao.UserDao;
import com.sec.model.Movies;
import com.sec.model.User;
import com.sec.repository.UserRepository;
//import com.sec.service.MovieService;
import com.sec.service.MovieService;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	UserRepository uRep;
	
//	
//	@RequestMapping(value = {"/", "/welcome"})
//	public ModelAndView getHome(Model model, Principal principal) {
//		
//		ModelAndView mav = new ModelAndView("home");
//		User user = uRep.findByUsername(principal.getName());
//		mav.addObject("user", user);
//		return mav;
//	}
	
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
	
	
	@Autowired
	private UserDao uDao;

//	public UserController(UserDao uDao) {
//		super();
//		this.uDao = uDao;
//	}
//
//	public UserController() {
//		super();
//	}
	
	@RequestMapping(value= {"/", "/login"}, method = RequestMethod.GET)
	public ModelAndView hello(HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
	
		return mv;
	}
	
	//Get ALL Users
	@RequestMapping(value = "/allUsers", method=RequestMethod.POST)
	public ModelAndView displayAllUser() {
		System.out.println("User Page Requested: ALL Users");
		ModelAndView mv = new ModelAndView();
		List userList = uDao.getAllUsers();
		mv.addObject("userList", userList);
		mv.setViewName("allUsers");
		
		return mv;
	}
	
	
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView displayNewUserForm() {
		ModelAndView mv = new ModelAndView("addUser");
		mv.addObject("headerMessage", "Add User Details");
		mv.addObject("user",new User());
		return mv;
	}
	
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView saveNewUser(@ModelAttribute User user, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/home");
		
		if (result.hasErrors()) {
			return new ModelAndView("error");
		}
		
		boolean isAdded = uDao.saveUser(user);
		
		if (isAdded) {
			mv.addObject("message", "New user successfully added");
		} else {
			return new ModelAndView("error");
		}
		
		return mv;
		
	}
	
	@RequestMapping(value = "/editUser/{uname}", method = RequestMethod.GET)
	public ModelAndView displayEditUserForm(@PathVariable String uname) {
		ModelAndView mv = new ModelAndView("/editUser");
		User user = uDao.getUserByUsername(uname);
		mv.addObject("headerMessage", "Edit User Details");
		mv.addObject("user", user);
		return mv;
	}
	
	public ModelAndView saveEditedUser(@ModelAttribute User user, BindingResult result) {
		
		ModelAndView mv = new ModelAndView("redirect:/home");
		
		if(result.hasErrors()) {
			System.out.println(result.toString());
			return new ModelAndView("error");
		}
		
		boolean isSaved = uDao.saveUser(user);
		
		if(!isSaved) {
			return new ModelAndView("error");
			
		}
		
		return mv;
		
	}
	
	public ModelAndView deleteUserById(@PathVariable Long id) {
		boolean isDeleted = uDao.deleteUserById(id);
		System.out.println("User deletion response: "+isDeleted);
		ModelAndView mv= new ModelAndView("redirect:/home");
		return mv;
	}
	
	
	  @Autowired
	    MovieService mserv;
	 
	    @RequestMapping(value= "/viewmov/{page_id}", method= RequestMethod.GET) 
	    public ModelAndView paginate(@PathVariable int page_id) {       
	        int total = 6;
	        if(page_id == 1) {
	            // do nothing!
	        } else {            
	            page_id= (page_id-1)*total+1;  
	        }
	 
	        List<Movies> list = mserv.getMoviesByPage(page_id, total);
	 
	        return new ModelAndView("login", "list", list);  
	    }
	
	
	
}
