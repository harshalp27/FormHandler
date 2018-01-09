package com.yash.rrf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public String getCountries(Model model) {
		
		List<ResourceDetails> listOfResources = addResourceService.getAllResources();
		model.addAttribute("country", new ResourceDetails());
		model.addAttribute("listOfResources", listOfResources);
		return "getResources";
	}
	
	public ModelAndView getResources(){  
        List<ResourceDetails> list=addResourceService.getAllResources();  
        return new ModelAndView("viewemp","list",list);  
    }
	 @RequestMapping(value = "/success", method = RequestMethod.POST)
		public String addResourceForm(@ModelAttribute("resource") ResourceDetails resDetails) {	
		 System.out.println(resDetails);
		 addResourceService.saveResourceDetails(resDetails);	
		 return "success";
		}
	
	 @RequestMapping(value = "/getResource/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
		public ResourceDetails getCountryById(@PathVariable int id) {
			return addResourceService.getCountry(id);
		}
	 
	 @RequestMapping(value = "/download", method = RequestMethod.GET)
		public String generatePdf(@ModelAttribute("resource") ResourceDetails resDetails) {
			System.out.println("In download");

		 //System.out.println(resDetails);
		/* try {
			addResourceService.generatePdf();
		} catch (DocumentException | IOException e) {
			e.printStackTrace();
		}*/	
		 return "showResource";
		}
}
