package com.spl.springcars;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.context.annotation.ComponentScan;

@ConfigurationPropertiesScan
@SpringBootApplication(scanBasePackages = {"com.spl.springcars.*"})
public class SpringcarsApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringcarsApplication.class, args);
	}

}
