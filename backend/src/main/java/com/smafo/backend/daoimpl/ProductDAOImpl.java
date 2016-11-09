package com.smafo.backend.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smafo.backend.dao.ProductDAO;
import com.smafo.backend.model.Product;



@SuppressWarnings("deprecation")
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO  {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean save(Product product) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().save(product);
		return true;
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		
	}

	public boolean update(Product product) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().update(product);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Product product) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().delete(product);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	public Product get(String id) {
		// TODO Auto-generated method stub
	return (Product)sessionFactory.getCurrentSession().get(Product.class,id);
		
	}
@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		String hql = "from Product";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
		
	}
 
	
}
