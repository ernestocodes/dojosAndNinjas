package com.ernesto.dojosandninjas.controllers;

import java.util.List;

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
public class NinjaController {

	@Autowired
	private MainService mainService;

//create a ninja: 1)render form 2)process form
	@GetMapping("/ninjas/new")
	public String newNinjaForm(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> allDojos = mainService.findAllDojos();
		model.addAttribute("dojos", allDojos);
		return "newNinjaForm.jsp";
	}

//process form
	@PostMapping("/ninjas/new")
	public String processNinjaForm(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", mainService.findAllDojos());
			return "newNinjaForm.jsp";
		} else {
			mainService.createNinja(ninja);
			return "redirect:/dojos/new";
		}
	}

//process form with dojo
	@PostMapping("/dojos/{id}/new")
	public String processDojoNinjaForm(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model,
			@PathVariable("id") Long id) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", mainService.findAllDojos());
			return "oneDojoWithForm.jsp";
		} else {
			System.out.println(ninja.getAttendingDojo());
			mainService.createNinja(ninja);
			return "redirect:/ninjas/new";
		}
	}
}
