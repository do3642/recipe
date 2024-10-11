package com.example.recipe.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.Post;
import com.example.recipe.repository.PostRepository;

@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	// 게시물 작성시 post db에 저장
	public void insertPost(Post post,Client client) {
		post.setClient(client);
		postRepository.save(post);
	}
	
	
	// 게시물DB 리스트 형태로 전체 리턴
	@Transactional(readOnly = true)
	public Page<Post> getPostList(Pageable pageable){
			return postRepository.findAll(pageable);
		}
	
	//게시물 주소(id)를 받아와서 DB에 해당하는 게시물데이터 꺼내와서 리턴
	public Post getPost(int id) {
		Optional<Post> data = postRepository.findById(id);
		
		if(data.isPresent()) {
			return data.get();
		} else {
			return null;
		}
		
	}
	
}
