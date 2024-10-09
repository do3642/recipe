package com.example.recipe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.recipe.domain.Client;




@Repository
public interface UserRepository extends JpaRepository<Client, Integer>{

	Client findByUsername(String username);
}
