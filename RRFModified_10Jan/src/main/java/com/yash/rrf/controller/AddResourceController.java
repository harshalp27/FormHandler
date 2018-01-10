package com.yash.rrf.controller;

import java.net.URL;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfDocument;
import com.itextpdf.text.pdf.PdfWriter;

import com.yash.rrf.model.ResourceDetails;
import com.yash.rrf.service.AddResourceService;


@Controller
public class AddResourceController {

	@Autowired 
	AddResourceService addResourceService;

	@RequestMapping(value = "/addResource", method = RequestMethod.GET)
	public String showResourceForm(@ModelAttribute("resource") ResourceDetails resDetails) {	
		System.out.println("In method");
		return "addResource";
	}

	@RequestMapping(value = "/getAllResources", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getResources(Model model) {

		List<ResourceDetails> listOfResources = addResourceService.getAllResources();
		model.addAttribute("resource", new ResourceDetails());
		model.addAttribute("listOfResources", listOfResources);
		return "getResources";
	}

	@RequestMapping(value = "/success", method = RequestMethod.POST)
	public String addResourceForm(@ModelAttribute("resource") ResourceDetails resDetails) {	
		System.out.println(resDetails);
		addResourceService.saveResourceDetails(resDetails);	
		return "success";
	}
	
	
	@RequestMapping(value = "/viewResource/{id}", method = RequestMethod.GET)
    public ModelAndView viewResource(@PathVariable int id){
		System.out.println("Get By Id" + id);
		ResourceDetails resource=addResourceService.getResourceById(id);  
		System.out.println(resource);
        return new ModelAndView("resourceViewForm","command",resource);  
    }  
	
	
//	@RequestMapping(value = "/viewResource/{id}", method = RequestMethod.GET)
//	public ModelAndView viewResource(@PathVariable int id){  
//		System.out.println("Get By Id" + id);
//		ResourceDetails resource=addResourceService.getResourceById(id);  
//		System.out.println(resource);
//		return new ModelAndView("resourceViewForm","command",resource);  
//	}

	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String generatePdf(URL url, String dest) {
		System.out.println("In download");

		
		return "showResource";
	}
}
