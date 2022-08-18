package com.app.service;


import java.util.List;

import org.springframework.http.ResponseEntity;

import com.app.model.Movie;

public interface IMovieService {
	
	public Movie addMovie(Movie movie);
	
	public boolean deleteMovie(String movieName);
	
	public Movie updateMovie(Movie movie);
	
	public Movie findItem(String movieName);
	
	public List<Movie> getAllMovies();
	
	
	public List<Movie> findMovieByNameorHero(String keyword);
	
//	public List<Movie> findMovieByNameorHero(String heroName, String movieName);

//	 public ResponseEntity<List<Movie>> findMovieByNameOrHero(String movieName, String heroName);
//	

}
