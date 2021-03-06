package com.samfo.backend.dao;

import java.util.List;

import com.smafo.backend.model.Category;


public interface CategoryDAO {

	public boolean save(Category category);
	public boolean update(Category category);
	public boolean delete(Category category);
	public Category get(String id);
	public List<Category> list();
}
	
