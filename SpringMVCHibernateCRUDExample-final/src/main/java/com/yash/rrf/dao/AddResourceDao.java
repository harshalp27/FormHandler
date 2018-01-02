package com.yash.rrf.dao;

import com.yash.rrf.model.*;


public interface AddResourceDao {

	public ResourceDetails saveResourceDetails(ResourceDetails resourceDetails);
	public InterviewDetails saveInterviewDetails(InterviewDetails interviewDetails);
	public SkillSet saveSkillSetDetails(SkillSet skillSetDetails);
}
