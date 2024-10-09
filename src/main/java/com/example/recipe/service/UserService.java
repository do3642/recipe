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
