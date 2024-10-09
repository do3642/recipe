package com.example.recipe.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.RoleType;
import com.example.recipe.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	
	//회원가입 서비스 - 권한세팅 후 DB저장
	public void insertUser(Client client) {
		
		client.setRole(RoleType.USER);
		userRepository.save(client);
		
	}
	
	
	//중복검사
	public boolean idCheck(Client client) {
		
		Client idCheck = userRepository.findByUsername(client.getUsername());
	// DB에 입력된 username이 없으면 null로 반환, 있으면 객체지만 else니깐 false로 리턴
		
		if(idCheck == null) {
			return true;
		}else {
			return false;
		}
		
	}
	
	
	//로그인정보 확인, 세션에 로그인정보 저장, 에러메세지 반환
	public boolean loginCheck(Client loginData,HttpSession session) {
		
		Client client = userRepository.findByUsername(loginData.getUsername());
		
		if(client != null && client.getUsername().equals(loginData.getUsername()) && client.getPassword().equals(loginData.getPassword())) {
			session.setAttribute("principal", client);
			
			return true;
		} else {
			return false;
		}
			
		
		
	}
	
	
}
