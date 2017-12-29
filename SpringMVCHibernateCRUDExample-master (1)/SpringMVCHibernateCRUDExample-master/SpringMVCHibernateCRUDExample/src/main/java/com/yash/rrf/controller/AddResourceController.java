package com.yash.rrf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yash.rrf.model.ResourceDetails;
import com.yash.rrf.service.AddResourceServiceImpl;
import com.yash.rrf.service.AddResourceService;


@Controller
public class AddResourceController {
	
	@Autowired 
	AddResourceService addResourceService;
	
	@RequestMapping(value = "/addResource", method = RequestMethod.GET)
	public String addCountry(@ModelAttribute("Resource") ResourceDetails resDetails) {	
	
		addResourceService.saveResourceDetails(resDetails);	
		return "redirect:/success";
	}
}
