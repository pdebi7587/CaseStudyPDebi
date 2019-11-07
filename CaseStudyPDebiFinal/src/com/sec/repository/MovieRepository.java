package com.sec.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sec.model.Movies;


@Repository
public interface MovieRepository extends CrudRepository<Movies,Integer>{


	public List<Movies> getMoviesByPage(int pageid, int total);
	
	
}
