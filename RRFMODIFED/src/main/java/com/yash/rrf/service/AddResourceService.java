package com.yash.rrf.service;

import java.io.IOException;
import java.util.List;

import com.itextpdf.text.DocumentException;
import com.yash.rrf.model.ResourceDetails;
public interface AddResourceService {

	public void saveResourceDetails(ResourceDetails resourceDetails);
	public List<ResourceDetails> getAllResources();
	public void generatePdf() throws DocumentException, IOException;
	public ResourceDetails getResource(int id);
	
}
