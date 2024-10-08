package com.example.shoppingMall.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.shoppingMall.domain.Client;




@Repository
public interface UserRepository extends JpaRepository<Client, Integer>{

	Client findByUsername(String username);
}
