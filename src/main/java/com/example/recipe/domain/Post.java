package com.example.recipe.domain;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Post {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Lob
	@Column
	private String thumbnail;
	
	@Column(nullable = false, length = 100)
	private String title;
	
	@Lob
	@Column(nullable = false)
	private String content;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	private int cnt;
	
	// 엔티티는 user의 id만 가져오기 번거로우니
	// 객체 형태로 가져온다, 관계는 설정해야함 1:N상태이니 ManyToOne
	@ManyToOne(fetch = FetchType.EAGER)
	// EAGER ->게시글 정보 로드 될때 동시에 유저정보를 가져옴, LAZY->사용할 때 가져옴
	
	@JoinColumn(name = "clientid") // 외래키 설정
	private Client client;
	
}
