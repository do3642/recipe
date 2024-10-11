package com.example.recipe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.recipe.domain.Post;


@Repository
public interface PostRepository extends JpaRepository<Post, Integer>{

}
