package com.yash.rrf.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.yash.rrf.model.InterviewDetails;
import com.yash.rrf.model.ResourceDetails;
import com.yash.rrf.model.SkillSet;
@Repository
public class AddResourceDaoImpl implements AddResourceDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public List<ResourceDetails> getAllResources() {
		System.out.println("GetInDaoImpl");
		Session session = this.sessionFactory.openSession();
		List<ResourceDetails> resourceList = session.createQuery("from ResourceDetails").list();
		return resourceList;
	}
	
	public ResourceDetails getResourceById(int id) {
		Session session = this.sessionFactory.openSession();
		ResourceDetails resource = (ResourceDetails) session.get(ResourceDetails.class, new Integer(id));
		System.out.println(resource);
		return resource;
	}

	public ResourceDetails saveResourceDetails(ResourceDetails resourceDetails){
	
		Session session = this.sessionFactory.openSession();
		session.save(resourceDetails);
		session.close();
		return resourceDetails;
	}

}

