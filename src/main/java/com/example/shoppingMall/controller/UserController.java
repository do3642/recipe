package com.example.shoppingMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	
	@GetMapping("/auth/insertuser")
	public String insertUser() {
		return "user/insertuser";
	}

//	@PostMapping("/auth/insertuser")
//	public String createUser() {
//		
//		
//		return null;
//		
//	}
}
