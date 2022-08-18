package com.app;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import org.springframework.web.client.RestTemplate;



@SpringBootApplication

public class MovieClientAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(MovieClientAppApplication.class, args);
        System.out.println("Hey Akhila , how are you ?");
	}
	
	@Bean
	public RestTemplate getRestTemplateBean() {
		return new RestTemplate();
	}

}
