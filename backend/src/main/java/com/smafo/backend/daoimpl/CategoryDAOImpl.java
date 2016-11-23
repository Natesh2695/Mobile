package com.smafo.backend.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smafo.backend.dao.CategoryDAO;
import com.smafo.backend.model.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO  {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean save(Category category) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().save(category);
		return true;
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		
	}

	public boolean update(Category category) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	public Category get(String id) {
		// TODO Auto-generated method stub
	return (Category)sessionFactory.getCurrentSession().get(Category.class,id);
		
	}
@Transactional
	public List<Category> list() {
		// TODO Auto-generated method stub
		String hql = "from Category";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
		
	}
 
	
}
