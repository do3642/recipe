<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>
<title>요리연구소</title>

<link rel="stylesheet" href="/css/post.css">
<%@ include file="./layout/nav.jsp" %>


	<section>
		<article class="items-board">
			 <c:if test="${empty postList}"> <!-- null이랑 같냐 조건식과 같음  -->
			 	<h1>등록된 게시물이 없습니다.</h1>	 
		 	</c:if>
	 		<c:forEach var ="post" items="${postList.content}"><!--var는 작명의 영역/변수명임 -->
		      <div class="card">
	             	<h4 class="card-title">${post.title}</h4>
	            	<a href="#" class="btn btn-secondary">상세보기</a>
      		 </div>
      		</c:forEach>
		</article>
	</section>
	

<script src="/js/main.js"></script>
<%@ include file="./layout/footer.jsp" %>
