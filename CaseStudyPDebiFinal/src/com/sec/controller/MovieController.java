package com.sec.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sec.dao.MovieDao;
import com.sec.model.Movies;


@Controller
public class MovieController {

	
	MovieDao mdao;
	
	@RequestMapping(value="/viewmov/{pageid}")
	public String edit(@PathVariable int pageid, Model m) {
		int total = 6;
		if(pageid==1) {}
		else {
			pageid=(pageid-1)*total+1;
		}
		
		System.out.println(pageid);
		
		List<Movies> list= mdao.getMoviesByPage(pageid,total);
		m.addAttribute("msg",list);
		
		return "viewmov";
		
	}
	
}
