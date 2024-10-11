package com.example.recipe.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.Post;
import com.example.recipe.domain.ResponseDTO;
import com.example.recipe.service.PostService;

@Controller
public class Postcontroller {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/post")
	public String postPage() {
		return "/post/insertpost";
	}
	
	@PostMapping("/post")
	@ResponseBody
	public ResponseDTO<?> insertPost(@RequestBody Post post,HttpSession session){
		Client principal = (Client) session.getAttribute("principal");
		
		postService.insertPost(post, principal);
		
		return new ResponseDTO<>(HttpStatus.OK.value(),"게시물 등록완료");
	}
	
	
	@GetMapping({"","/"}) 
	public String getPostList(Model model, @PageableDefault(size=10,sort="id",direction = Direction.DESC) Pageable pageable) {
		
		Page<Post> postList = postService.getPostList(pageable);
		
		// html로 데이터를 보내기 위한 모델객체
		model.addAttribute("postList", postList);
		
		return "index";
	}
	
}
