package com.example.recipe.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Client {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(unique = true,nullable = false,length = 40)
	private String username;
	
	@Column(nullable = false,length = 40)
	private String password;
	
	@Column(unique = true,nullable = false,length = 40)
	private String nickname;
	
	@Column(nullable = false, length = 40)
	private String clientname;
	
	private String tel;
	
	private String address;
	
	private int point =0;
	
	@Enumerated(EnumType.STRING)
	private RoleType role;
	
}
