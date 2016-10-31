package com.smafo.backend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestCategory {

	public static void main(String[] args) {
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.smafo.backend");
		context.refresh();
		context.getBean("category");
		context.close();
		System.out.println("the object is created");
		
	}
	
}
