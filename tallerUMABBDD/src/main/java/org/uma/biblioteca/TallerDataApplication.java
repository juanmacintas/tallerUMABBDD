package org.uma.biblioteca;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

import com.github.cloudyrock.spring.v5.EnableMongock;

@SpringBootApplication
@EnableMongock
@EnableCaching
public class TallerDataApplication {

	public static void main(String[] args) {
		SpringApplication.run(TallerDataApplication.class, args);
	}

}
