package com.smafo.backend;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.smafo.backend.dao.CategoryDAO;
import com.smafo.backend.model.Category;


public class CategoryTestCase 
{
	public CategoryTestCase() 
	{
	}
@Autowired
static AnnotationConfigApplicationContext context;

@Autowired
static Category category;
@Autowired
static CategoryDAO categoryDAO;

@BeforeClass
@Autowired
public static void init()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.smafo");		
    context.refresh();
    
     categoryDAO=(CategoryDAO) context.getBean("categoryDAO");
     category=(Category)context.getBean("category");
    System.out.println("the object are created");

}

@Test
public void createCategoryTestCase()
{
	category.setId("123");
	category.setDescription("nates");
	category.setName("moblie");
	Boolean status =categoryDAO.save(category);
	Assert.assertEquals("createCategoryTestCase",true , status);
}

}