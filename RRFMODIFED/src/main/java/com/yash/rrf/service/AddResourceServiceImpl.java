package com.yash.rrf.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;

import com.yash.rrf.dao.AddResourceDao;
import com.yash.rrf.model.ResourceDetails;

@Service("addResourceService")
public class AddResourceServiceImpl implements AddResourceService {

	@Autowired
	AddResourceDao addResourceDao;
	

	public void saveResourceDetails(ResourceDetails resourceDetails){
		System.out.println(resourceDetails);
		System.out.println("In serivce");
		
		addResourceDao.saveResourceDetails(resourceDetails);
	}
	
	public ResourceDetails getResource(int id) {
		return addResourceDao.getResource(id);
	}
	
	public List<ResourceDetails> getAllResources() {
		return addResourceDao.getAllResources();
	}
	
	public void generatePdf() throws DocumentException, IOException{
		 Document document = new Document();
	        // step 2
	        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("pdf.pdf"));
	        // step 3
	        document.open();
	        // step 4
	        XMLWorkerHelper.getInstance().parseXHtml(writer, document,
	                new FileInputStream("addResource.jsp")); 
	        //step 5
	         document.close();
	 
	        System.out.println( "PDF Created!" );
	}

}
