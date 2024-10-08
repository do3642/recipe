package com.example.shoppingMall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.shoppingMall.domain.Client;
import com.example.shoppingMall.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/auth/insertuser")
	public String insertUser() {
		return "user/insertuser";
	}

	@PostMapping("/auth/insertuser")
	public String createUser(Client client) {
		
		if(userService.idCheck(client)) {
			
		}
		userService.insertUser(client);
		
		return "redirect:/";
		
	}
}
