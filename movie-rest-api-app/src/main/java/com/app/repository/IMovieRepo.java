package com.app.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.app.model.Movie;


public interface IMovieRepo extends JpaRepository<Movie, String>{
	@Query(value = "from Movie where heroName like %:keyword%  or movieName like %:keyword%")
	public List< Movie> findMovieByNameOrHero(@Param("keyword") String keyword);
	
	@Query(value ="from Movie order by created_at desc")
	public List<Movie> getAllMoviesList();
	

}
