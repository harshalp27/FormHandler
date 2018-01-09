package com.yash.rrf.dao;

import java.util.List;

import com.yash.rrf.model.ResourceDetails;


public interface AddResourceDao {

	public ResourceDetails saveResourceDetails(ResourceDetails resourceDetails);
	public List<ResourceDetails> getAllResources();
	public ResourceDetails getResource(int id);
}
