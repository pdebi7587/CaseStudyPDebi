package com.sec.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="dcom")
public class Movies {

	@Id
	@Column(name="position")
	public int movId;
	
	@Column(name="constant")
	public String tag;
	
	@Column(name="title")
	public String movName;
	
	@Column(name="url")
	public String url;
	
	@Column(name="ImdbRating")
	public double imdbR;
	
	@Column(name="Runtime")
	public int time;
	
	@Column(name="Genres")
	public String genres;
	
	@Column(name="release_date")
	public Date reldate;

	public int getMovId() {
		return movId;
	}

	public void setMovId(int movId) {
		this.movId = movId;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getMovName() {
		return movName;
	}

	public void setMovName(String movName) {
		this.movName = movName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public double getImdbR() {
		return imdbR;
	}

	public void setImdbR(double imdbR) {
		this.imdbR = imdbR;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public Date getReldate() {
		return reldate;
	}

	public void setReldate(Date reldate) {
		this.reldate = reldate;
	}
	
	
	
	
	
	
}
