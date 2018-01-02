package com.yash.rrf.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		return "addResource";
	}
	
	 
	 @RequestMapping(value = "/success", method = RequestMethod.POST)
		public String addResourceForm(@ModelAttribute("resource") ResourceDetails resDetails) {	
		 System.out.println(resDetails);
		 addResourceService.saveResourceDetails(resDetails);	
		 return "success";
		 
		}
}
