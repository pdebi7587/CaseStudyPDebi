package com.sec.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sec.dao.MovieDao;
import com.sec.model.Movies;
import com.sec.model.User;
import com.sec.repository.MovieRepository;


@Transactional
@Service("movieService")
public class MovieService implements MovieDao { //implements MovieRepository{
	
	
	@Autowired
	private MovieRepository movRepository;

//	@Override
//	public List<Movies> findMoviesByPage(int pageable) {
//		List<Movies> mList = movRepository.findAll();
//		
//		//mList.forEach(System.out::println);
//		  long count = movRepository.count();
//	        int pageSize = 25;
//	        long pages = count / pageSize;
//	        for (int i = 1; i < pages; i++) {
//	            System.out.printf("page num: %s%n", i);
//	            List<Movies> list = movRepository.findAll();   //("Sales", PageRequest.of(i, pageSize));
//	            list.forEach(System.out::println);
//	            return list;
//	        }
//		
//		
//	}

//	@RequestMapping("list")
//	@Override
//	public List<Movies> findMoviesByPage(Pageable pageable) {
//		// TODO Auto-generated method stub
//		
//		List<Movies> mList = movRepository.findAll();
//		return mList;
//	}
	
	
//	@Autowired
//    private MovieDao mdao;
// 
//    public List<Movies> getMoviesByPage(int pageid, int total) {
//        return mdao.getMoviesByPage(pageid, total);
//    }
	
	
	public List<Movies> getAllMovies() {
		List<Movies> movieList = new ArrayList<>();
		movRepository.findAll().forEach(movieList::add);
		return movieList;
	}

@Override
public Iterable<Movies> findAll() {
	// TODO Auto-generated method stub
	return movRepository.findAll();
}


	



}
