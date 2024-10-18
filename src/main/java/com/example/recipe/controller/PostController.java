package com.example.recipe.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.recipe.domain.Client;
import com.example.recipe.domain.PageDTO;
import com.example.recipe.domain.Post;
import com.example.recipe.domain.ResponseDTO;
import com.example.recipe.repository.PostRepository;
import com.example.recipe.service.PostService;

@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	@Autowired
	private PostRepository postRepository;
	
	
	//게시글 작성 네비 클릭시 작성 페이지 이동
	@GetMapping("/post")
	public String postPage() {
		return "/post/insertpost";
	}
	
	//게시글 등록 버튼 클릭 시 세션에 있는 로그인 유저 정보를 객체로 꺼내 post(게시물DB)에 저장
	@PostMapping("/post")
	@ResponseBody
	public ResponseDTO<?> insertPost(@RequestBody Post post,HttpSession session){
		Client principal = (Client) session.getAttribute("principal");
		
		postService.insertPost(post, principal);
		
		return new ResponseDTO<>(HttpStatus.OK.value(),"게시물 등록완료");
	}
	
	
	@GetMapping({"","/"}) 
	public String getPostList(Model model, @PageableDefault(size=6,sort="id",direction = Direction.DESC) Pageable pageable) {
		
		Page<Post> postList = postService.getPostList(pageable);
		
		// html로 데이터를 보내기 위한 모델객체
		model.addAttribute("postList", postList);
		model.addAttribute("pageDTO", new PageDTO(postList));
		
		return "index";
	}
	
	
	@GetMapping("/post/{id}")
	public String getPost(@PathVariable Integer id, Model model) {
		
		Post post = postService.getPost(id);
		model.addAttribute("post",post);
		
		return  "/post/detail";
	}
	
	
	@GetMapping("/post/modify/{id}")
	public String modify(@PathVariable Integer id, Model model) {
		Post post = postService.getPost(id);
		model.addAttribute("post",post);
		return "post/modify";
	}
	
	
	@PutMapping("/post")
	@ResponseBody
	public ResponseDTO<?> modify(@RequestBody Post post){
			postService.updatePost(post);

			return new ResponseDTO<>(HttpStatus.OK.value(), post.getId() + "번 게시물 수정 완료");
			
		}
	
	@DeleteMapping("/post/{id}")
	@ResponseBody
	public ResponseDTO<?> deletePost(@PathVariable int id){
		
		
		postService.deletePost(id);
		
		return new ResponseDTO<>(HttpStatus.OK.value(), "삭제완료");
		
	}
	
	
}
