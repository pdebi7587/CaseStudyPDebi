package com.sec.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="reviews")
public class Reviews {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="RevId")
	private long id;
	
	@Column(name="review")
	private String review;
	
	@Column(name="RatingId")
	private long ratingId;
	
	@Column(name="Rating")
	private int rating;
	
//	@ManyToOne
//	@JoinTable(name="Movie_Rating",
//	joinColumns= @JoinColumn(name="MovieId"),
//	inverseJoinColumns= @JoinColumn(name="ratingId"))
//	private Set<Rating> rates = new HashSet<>();
	
	
	
	
	
}
