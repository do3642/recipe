package com.example.recipe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Postcontroller {
	
	
	@GetMapping("/post")
	public String postPage() {
		return "/post/insertpost";
	}
	
	
}
