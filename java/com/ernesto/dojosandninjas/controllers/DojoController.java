package com.ernesto.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.ernesto.dojosandninjas.models.Dojo;
import com.ernesto.dojosandninjas.models.Ninja;
import com.ernesto.dojosandninjas.services.MainService;

@Controller
public class DojoController {

	@Autowired
	private MainService mainService;

//create Dojo: 1. render form page 2. process form
	@GetMapping("/dojos/new")
	public String newDojoForm(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojoForm.jsp";
	}

//	process form
	@PostMapping("/dojos/new")
	public String processDojoForm(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojoForm.jsp";
		} else {
			mainService.createDojo(dojo);
			return "redirect:/dojos/new";
		}
	}

//render one user
	@GetMapping("/dojos/{id}")
	public String showOneDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", mainService.findOneDojo(id));
		return "oneDojo.jsp";
	}

//render both form and one dojo
	@GetMapping("/dojos/{id}/new")
	public String oneDojoWithForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("ninja", new Ninja());
		model.addAttribute("dojo", mainService.findOneDojo(id));
		return "oneDojoWithForm.jsp";
	}
}
