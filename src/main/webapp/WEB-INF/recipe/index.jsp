<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>
<title>요리연구소</title>

<link rel="stylesheet" href="/css/post.css">
<link rel="stylesheet" href="/css/page.css">
<%@ include file="./layout/nav.jsp" %>


	<section>
		<article class="items-board">
			 <c:if test="${empty postList}"> 
			 	<h1>등록된 게시물이 없습니다.</h1>	 
		 	</c:if>
	 		<c:forEach var ="post" items="${postList.content}">
	 		
		      <div class="card">
		      		<figure>
		      			<div><img src="/img/${i=i+1}.jpg"></div>
		      			<figcaption>
		      			<h4 class="card-title">${post.title}</h4>
		      			</figcaption>
		      		</figure>
	             	<div class="more-btn">
	             		<a href="/post/${post.id}">상세보기</a>
	             	</div>
	            	
      		 </div>
      		</c:forEach>
		</article>
		
		<article class="page-btn-box">
			<ul>
				<li class="${pageDTO.prev ? '' : 'disabled' }">
					<a href="?page=${pageDTO.startPage - 2}">이전</a>
				</li>
				
				<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}">
					<li><a class="${i == pageDTO.page.number+1 ? 'active':''}" href="?page=${i-1}">${i}</a></li>
				</c:forEach>
				
				<li class="${pageDTO.next ? '' : 'disabled'}">
					<a href="?page=${pageDTO.endPage}">다음</a>
				</li>
			</ul>
		</article>
		
	</section>
	

<script src="/js/main.js"></script>
<%@ include file="./layout/footer.jsp" %>
