<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 게시물</title>


<link rel="stylesheet" href="/css/detail.css">

<%@ include file="../layout/nav.jsp" %>

	<section>
		<div class="item-category">카테고리</div>
		<article class="item-header">
		
		<div class="item-title">${post.title}</div>
		<div class="item-box">
			<span>${post.client.nickname} | </span>
			<span>${post.createDate} |</span>
			<span>조회수: <small>${post.cnt }</small></span>
		</div>
		<div class="content">
			<p>
			${post.content}
			</p>
		</div>
		</article>
		
		<div class="con-post"></div>
		
		<article class="comments">
			<textarea rows="5%"></textarea>
			<input type="button" value="댓글 등록">
			<div></div>
		</article>
		
		<article class="comments-list">
			<div>
				<span>${post.client.nickname} |</span> <span>${post.createDate }</span>
				<p>등록한 댓글 내용</p>
			</div>
		</article>
		
	</section>


<%@ include file="../layout/footer.jsp" %>