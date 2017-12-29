package com.yash.rrf.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yash.rrf.model.ResourceDetails;
@Repository
public class AddResourceDaoImpl implements AddResourceDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public void saveResourceDetails(ResourceDetails resorceDetails){
	
		Session session = this.sessionFactory.getCurrentSession();
	//	session.persist(resorceDetails);
				
	}

}
