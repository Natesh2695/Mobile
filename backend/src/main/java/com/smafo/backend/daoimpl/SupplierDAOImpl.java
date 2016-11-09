package com.smafo.backend.daoimpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smafo.backend.dao.SupplierDAO;
import com.smafo.backend.model.Supplier;

@SuppressWarnings("deprecation")
@Repository("SupplierDAO")
public class SupplierDAOImpl implements SupplierDAO  {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
@Transactional
	public boolean save(Supplier supplier) {
		// TODO Auto-generated method stub
	try {
		sessionFactory.getCurrentSession().save(supplier);
		return true;
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		
	}

	public boolean update(Supplier supplier) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(Supplier supplier) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}

	public Supplier get(String id) {
		// TODO Auto-generated method stub
	return (Supplier)sessionFactory.getCurrentSession().get(Supplier.class,id);
		
	}
@Transactional
	public List<Supplier> list() {
		// TODO Auto-generated method stub
		String hql = "from Supplier";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
		
	}
 
	
}
