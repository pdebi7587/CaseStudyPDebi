package com.sec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sec.dao.MovieDao;
import com.sec.model.Movies;
import com.sec.service.MovieService;


@Controller
@RequestMapping("dcom")
public class MovieController {

	@Autowired
	 private MovieDao movieDao;
	
	//@RequestMapping("/viewmov")
//	public ModelAndView Paginate(@PathVariable int page_id) {
//		//System.out.println("Movie List!");
//		//ModelAndView mav = new ModelAndView("viewmov");
//		
//	    int total = 6;
//        if(page_id == 1) {
//            // do nothing!
//        } else {            
//            page_id= (page_id-1)*total+1;  
//        }
// 
//        List<Movies> list = movieDao.findMoviesByPage(page_id);
// 
//        return new ModelAndView("welcome", "list", list);  
//    }
//		
//		
//		
//		return mav;
//	}
	
	
	
//	  @RequestMapping(value= "/viewmov", method= RequestMethod.GET) 
//    public ModelAndView paginate(@PathVariable int page_id) {       
//        int total = 6;
//        if(page_id == 1) {
//            // do nothing!
//        } else {            
//            page_id= (page_id-1)*total+1;  
//        }
// 
//        List<Movies> list = movieDao.getMoviesByPage(page_id, total);
// 
//        return new ModelAndView("login","list", list);  
//    }
	  
	  
	  
	        
	        
//	    @RequestMapping(value="/viewmov")    
//	    public String edit(@PathVariable int pageid,Model m){    
//	        int total=6;    
//	        if(pageid==1){}    
//	        else{    
//	            pageid=(pageid-1)*total+1;    
//	        }    
//	        System.out.println(pageid);  
//	        List<Movies> list=movieDao.getMoviesByPage(pageid,total);    
//	          m.addAttribute("list", list);  
//	        return "viewmov";    
//	    }

	
//	@Autowired
//	MovieService movieService;
//	
//	ModelAndView mav;
//	
//	//Show movie list
//	@RequestMapping(value="/viewmov")
//	public ModelAndView getMovieList() {
//		//get movie list from DB
//		mav = new ModelAndView("viewmov");
//		mav.addObject("MOVIELIST",movieService.getAllMovies());
//		return mav;
//	}
	  
	
	 @RequestMapping(method = RequestMethod.GET)
	 public String viewmov(ModelAndView modelMap) {
		 modelMap.addObject("movies", movieDao.findAll());
		 return "/viewmov";
	 }
	
	
	
}
