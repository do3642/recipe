package com.example.recipe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.recipe.domain.Client;
import com.example.recipe.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	//회원가입 페이지 이동
	@GetMapping("/auth/insertuser")
	public String insertUser() {
		return "user/insertuser";
	}
	
	
	//회원가입 POST요청
	@PostMapping("/auth/insertuser")
	public String createUser(Client client) {
		
		if(userService.idCheck(client)) {
			userService.insertUser(client);
			return "redirect:/";
		}else {
			// 중복값이 있을때 리턴시키는곳
			return "";
		}
		
		
	}
}
