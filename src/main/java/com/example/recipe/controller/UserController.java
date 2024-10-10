package com.example.recipe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.ResponseDTO;
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
	
	//로그인 페이지 이동
	@GetMapping("/auth/login")
	public String loginPage () {
		return "user/login";
	}
	
	//로그인 기능
	@PostMapping("/auth/login")
	public String login(Client client,HttpSession session) {
		
		if(userService.loginCheck(client,session)) {
			
			return "redirect:/";
		}else {
			// 보는 페이지에서 리턴해주고싶음
			return null;
		}
		
	}
	
	//내정보 페이지 이동
	@GetMapping("/auth/userinfo")
	public String userInfo() {
		return "user/userinfo";
	}
	
	//내정보 업데이트
	@PutMapping("/auth/update")
	@ResponseBody
	public ResponseDTO<?> updateUser(@RequestBody Client client,HttpSession session){
		
		System.out.println(client);
		userService.updateUser(client,session);
		return new ResponseDTO<>(HttpStatus.OK.value(), "수정 완료");
	}
	
	
	//회원 탈퇴
	@DeleteMapping("/auth/delete")
	@ResponseBody
	public ResponseDTO<?> deleteUser(@RequestParam int id,HttpSession session) {
		System.out.println(id);
		userService.deleteUser(id);
		session.invalidate();
		return new ResponseDTO<>(HttpStatus.OK.value(), "삭제 완료");
	}
	//로그아웃
	@GetMapping("/auth/logout")
	public String logout(HttpSession session) {
		session.invalidate();
	
		return "redirect:/";
	}
	
	
}
