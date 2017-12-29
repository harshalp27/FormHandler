package com.yash.rrf.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yash.rrf.dao.AddResourceDao;
import com.yash.rrf.model.ResourceDetails;

@Service("addResourceService")
public class AddResourceServiceImpl implements AddResourceService {

	@Autowired
	AddResourceDao addResourceDao;
	
	public void saveResourceDetails(ResourceDetails resourceDetails){
		addResourceDao.saveResourceDetails(resourceDetails);
		
		
	}

}
