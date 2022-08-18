package com.app.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Movie {
	
	@Id
	private String movieName;
	private long movieBudget;
	private String directorName;
	private String heroName;
	private String language;
	private MovieCategory movieCategory;
//	private String keyword;
	private Date created_at = new Date();
	public Date getDate() {
		return created_at;
	}
	public void setDate(Date created_at) {
		this.created_at = created_at;
	}
	public Movie() {
		
	}
	public Movie(String movieName, long movieBudget, String directorName, String heroName, String language,
			MovieCategory movieCategory) {
		super();
		this.movieName = movieName;
		this.movieBudget = movieBudget;
		this.directorName = directorName;
		this.heroName = heroName;
		this.language = language;
		this.movieCategory = movieCategory;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public long getMovieBudget() {
		return movieBudget;
	}
//	public String getKeyword() {
//		return keyword;
//	}
//	public void setKeyword(String keyword) {
//		this.keyword = keyword;
//	}
	public void setMovieBudget(long movieBudget) {
		this.movieBudget = movieBudget;
	}
	public String getDirectorName() {
		return directorName;
	}
	public void setDirectorName(String directorName) {
		this.directorName = directorName;
	}
	public String getHeroName() {
		return heroName;
	}
	public void setHeroName(String heroName) {
		this.heroName = heroName;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public MovieCategory getMovieCategory() {
		return movieCategory;
	}
	public void setMovieCategory(MovieCategory movieCategory) {
		this.movieCategory = movieCategory;
	}
	@Override
	public String toString() {
		return "Movie [movieName=" + movieName + ", movieBudget=" + movieBudget + ", directorName=" + directorName
				+ ", heroName=" + heroName + ", language=" + language + ", movieCategory=" + movieCategory
				 + ", date=" + created_at + "]";
	}
	public String movieNameToUpperCase() {
		return this.movieName.toUpperCase();
	}
	public String movieNameToLowerCase() {
		return this.movieName.toUpperCase();
	}
	
	
	

}
