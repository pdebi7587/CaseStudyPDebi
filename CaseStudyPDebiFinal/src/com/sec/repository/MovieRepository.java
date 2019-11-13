package com.sec.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sec.model.Movies;


@Repository("movieRepository")
public interface MovieRepository extends CrudRepository<Movies,Integer>{
	
	//Page<Movies> findAll(Pageable pageable);
	
	
	
}
