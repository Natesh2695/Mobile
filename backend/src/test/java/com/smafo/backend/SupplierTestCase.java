package com.smafo.backend;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.smafo.backend.dao.SupplierDAO;
import com.smafo.backend.model.Supplier;

public class SupplierTestCase {

@Autowired
static AnnotationConfigApplicationContext context;

@Autowired
static Supplier Supplier;

@Autowired
static SupplierDAO SupplierDAO;

@BeforeClass
public static void init()
{
	context = new AnnotationConfigApplicationContext();
	context.scan("com.smafo.backend");
	context.refresh();
	SupplierDAO =(SupplierDAO) context.getBean("SupplierDAO");
	Supplier =(Supplier)context.getBean("Supplier");
	System.out.println("the objects are created");
	}
//start writing Junit Test cases
//For each method in DAO
@Test
public void createSupplierTestCase()
{
	Supplier.setId("03");
	Supplier.setDescription("mobile");
	Supplier.setName("apple");
	
	Boolean status =SupplierDAO.save(Supplier);
	Assert.assertEquals("Create Supplier Test Case", true,status);
	
}
@Test
public void deleteSupplierTestCase()
{
	Supplier.setId("02");
    Boolean status =SupplierDAO.delete(Supplier);
	Assert.assertEquals("Create Supplier Test Case", true,status);
}
@Test
public void updateSupplierTestCase()
{
	Supplier.setId("01");
	Supplier.setDescription("phone");
    Boolean status =SupplierDAO.save(Supplier);
	Assert.assertEquals("Create Supplier Test Case", true,status);
	
}
@Test
public void getSupplierTestCase()
{
	Assert.assertEquals("get Supplier Test Case",null,SupplierDAO.get("01"));
}
@Test
public void getAllSupplierTestCase()
{
	Assert.assertEquals("get all Supplier Test Case", 2, SupplierDAO.list().size());
}
}