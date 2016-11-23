package com.smafo.backend;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.smafo.backend.dao.CategoryDAO;
import com.smafo.backend.model.Category;

public class CategoryTestCase {

@Autowired
static AnnotationConfigApplicationContext context;

@Autowired
static Category Category;

@Autowired
static CategoryDAO categoryDAO;

@BeforeClass
@Autowired
public static void init()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.smafo");
	context.refresh();
	categoryDAO =(CategoryDAO) context.getBean("CategoryDAO");
	 Category =(Category)context.getBean("Category");
	System.out.println("the objects are created");
	}
//start writing Junit Test cases
//For each method in DAO
@Test
public void createCategoryTestCase()
{
	Category.setId("03");
	Category.setDescription("mobile");
	Category.setName("apple");
	
	Boolean status =categoryDAO.save(Category);
	Assert.assertEquals("Create Category Test Case", true,status);
	
}
@Test
public void deleteCategoryTestCase()
{
	Category.setId("02");
    Boolean status =categoryDAO.delete(Category);
	Assert.assertEquals("Create Category Test Case", true,status);
}
@Test
public void updateCategoryTestCase()
{
	Category.setId("01");
	Category.setDescription("phone");
    Boolean status =categoryDAO.save(Category);
	Assert.assertEquals("Create Category Test Case", true,status);
	
}
@Test
public void getCategoryTestCase()
{
	Assert.assertEquals("get Category Test Case",null,categoryDAO.get("01"));
}
@Test
public void getAllCategoryTestCase()
{
	Assert.assertEquals("get all Category Test Case", 2, categoryDAO.list().size());
}
}