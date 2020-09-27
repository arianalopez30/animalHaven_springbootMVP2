package com.example.animalHaven;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AnimalController {
	
	@Autowired
	private AnimalRepository animalRepo;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/all")
	public String getAllAnimals(Model model){
		
		ArrayList <Animal> listOfAnimals = (ArrayList<Animal>) animalRepo.findAll();
		model.addAttribute("listOfAnimals", listOfAnimals);
	
		return "list-all";
		
	}
	

}
