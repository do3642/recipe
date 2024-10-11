package com.example.recipe.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.example.recipe.domain.Client;

public class AuthInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Client principal = (Client) session.getAttribute("principal");
		if(principal == null) {
			response.sendRedirect("/auth/login");
		}
		
		return true;
	}

}
