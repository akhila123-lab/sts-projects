package com.app.service;

import java.util.Arrays;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.app.model.Movie;

@Service
public class MovieAppApiService  {
	
	private String movieAppUrl = "http://localhost:8090/movies";
	
	@Autowired
	private RestTemplate rt;

	public Movie addMovie(Movie movie) {
		Movie addmovie = rt.postForObject(movieAppUrl, movie, Movie.class); 
		return addmovie;
	}
	
	public void deleteMovieByName(String movieName) {
		 rt.delete(movieAppUrl+"/"+movieName);
	}
	
	public Movie updateMovie(Movie movie) {
		HttpEntity<Movie> entity = new HttpEntity<Movie>(movie);
		
		Movie movies = rt.exchange(movieAppUrl, HttpMethod.PUT, entity, Movie.class).getBody();
		return movies;
	}
	
	public Movie getMovieByName(String movieName) {
		return rt.getForObject(movieAppUrl+"/movie-name/"+movieName, Movie.class);
		
	}
	public List<Movie> getMovieByKeyword(String keyword) {
		Movie movies[] = rt.getForObject(movieAppUrl+"/nameorhero/keyword/"+keyword, Movie[].class);
		return Arrays.asList(movies);
	}
	
	
	public List<Movie> getAllMoviesList() {
		Movie[] movieList = rt.getForObject(movieAppUrl, Movie[].class);
		
		return Arrays.asList(movieList);
	}
	

}
