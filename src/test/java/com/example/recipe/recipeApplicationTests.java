package com.example.recipe;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.Post;
import com.example.recipe.repository.PostRepository;
import com.example.recipe.repository.UserRepository;

@SpringBootTest
class recipeApplicationTests {

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private PostRepository postRepository;
	
	@Test
	void contextLoads() {
		
		Client client = userRepository.findById(5).get();
		
		for(int i=30; i<=60; i++) {
			
		
		Post post = new Post();
		post.setTitle("임시 게시물 제목"+i);
		post.setContent("임시 게시물 내용"+i);
		post.setClient(client);
		post.setThumbnail("임시이미지주소"+i);
		
		postRepository.save(post);
		}
	}

}
