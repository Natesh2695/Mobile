package com.smafo.backend;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.smafo.backend.dao.ProductDAO;
import com.smafo.backend.model.Product;

public class ProductTestCase {

@Autowired
static AnnotationConfigApplicationContext context;

@Autowired
static Product Product;

@Autowired
static ProductDAO ProductDAO;

@BeforeClass
public static void init()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.smafo.backend");
	context.refresh();
	ProductDAO =(ProductDAO) context.getBean("ProductDAO");
	Product =(Product)context.getBean("Product");
	System.out.println("the objects are created");
	}
//start writing Junit Test cases
//For each method in DAO
@Test
public void createProductTestCase()
{
	Product.setId("03");
	Product.setDescription("mobile");
	Product.setName("apple");
	
	Boolean status =ProductDAO.save(Product);
	Assert.assertEquals("Create Product Test Case", true,status);
	
}
@Test
public void deleteProductTestCase()
{
	Product.setId("02");
    Boolean status =ProductDAO.delete(Product);
	Assert.assertEquals("Create Product Test Case", true,status);
}
@Test
public void updateProductTestCase()
{
	Product.setId("01");
	Product.setDescription("phone");
    Boolean status =ProductDAO.save(Product);
	Assert.assertEquals("Create Product Test Case", true,status);
	
}
@Test
public void getProductTestCase()
{
	Assert.assertEquals("get Product Test Case",null,ProductDAO.get("01"));
}
@Test
public void getAllProductTestCase()
{
	Assert.assertEquals("get all Product Test Case", 2, ProductDAO.list().size());
}
}