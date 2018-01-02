package com.yash.rrf.dao;

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

	
	public ResourceDetails saveResourceDetails(ResourceDetails resourceDetails){
	
		Session session = this.sessionFactory.openSession();
		session.save(resourceDetails);
		session.close();
		return resourceDetails;
	}


	@Override
	public InterviewDetails saveInterviewDetails(InterviewDetails isterviewDetails) {
		Session session = this.sessionFactory.openSession();
		session.save(isterviewDetails);
		session.close();
		return isterviewDetails;	
	}


	@Override
	public SkillSet saveSkillSetDetails(SkillSet skillSetDetails) {
		Session session = this.sessionFactory.openSession();
		session.save(skillSetDetails);
		return skillSetDetails;
}
}
