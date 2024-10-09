package com.example.recipe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
	public boolean idCheck(Client client) {
		
		Client idCheck = userRepository.findByUsername(client.getUsername());
	// DB에 입력된 username이 없으면 null로 반환, 있으면 객체지만 else니깐 false로 리턴
		
		if(idCheck == null) {
			return true;
		}else {
			return false;
		}
		
	}
	
}
