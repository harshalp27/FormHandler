package com.yash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yash.model.ResourceDetails;

@Controller
public class AddResourceController {

	
	@RequestMapping(value ="/resourceForm", method = RequestMethod.GET)
	public ModelAndView showForm(ModelAndView model, @ModelAttribute("resourceDetails") ResourceDetails resDetails)
	{
		  return new ModelAndView("AddResource", "resourceDetailobj", new ResourceDetails());
	}
}
