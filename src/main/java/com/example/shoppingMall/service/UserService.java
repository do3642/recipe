package com.example.shoppingMall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.shoppingMall.domain.Client;
import com.example.shoppingMall.domain.RoleType;
import com.example.shoppingMall.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	
	public void insertUser(Client client) {
		
		client.setRole(RoleType.USER);
		userRepository.save(client);
		
	}
	
	public boolean idCheck(Client client) {
		
		Client idCheck = userRepository.findByUsername(client.getUsername());
		
		if(idCheck.getUsername() == null) {
			return true;
		}else {
			return false;
		}
		
	}
	
}
