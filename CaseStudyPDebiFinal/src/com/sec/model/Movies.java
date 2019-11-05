package com.sec.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Movies")
public class Movies {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MovieId")
	private long movId;
	
	@Column(name="MovieName")
	private String movName;
	
	
	@Column(name="MovieYear")
	private int movYear;
	
	@ManyToMany
	private List<User> user;
	
	
	
	@OneToMany
	@JoinTable(name="Movie_Review", 
	joinColumns= @JoinColumn(name="MovieId"),
	inverseJoinColumns=@JoinColumn(name="RevId"))
	private Set<Reviews> revs= new HashSet<Reviews>();
	
	
	

	public Movies() {
		super();
	}
	
	public Movies(long movId, String movName, int movYear) {
		super();
		this.movId = movId;
		this.movName = movName;
		this.movYear = movYear;
	}


	public long getMovId() {
		return movId;
	}


	public void setMovId(long movId) {
		this.movId = movId;
	}


	public String getMovName() {
		return movName;
	}


	public void setMovName(String movName) {
		this.movName = movName;
	}


	public int getMovYear() {
		return movYear;
	}


	public void setMovYear(int movYear) {
		this.movYear = movYear;
	}

	@Override
	public String toString() {
		return "Movies [movId=" + movId + ", movName=" + movName + ", movYear=" + movYear + "]";
	}
	
}
