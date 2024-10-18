<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./layout/header.jsp" %>
<title>요리연구소</title>

<link rel="stylesheet" href="/css/post.css">
<link rel="stylesheet" href="/css/page.css">
<link rel="stylesheet" href="/css/category.css">
<%@ include file="./layout/nav.jsp" %>


	<section>
		
		<div class="main-img-boardBox">
			<article class="items-board">
				 <c:if test="${empty postList}"> 
				 	<p>등록된 게시물이 없습니다.</p>	 
			 	</c:if>
		 		<c:forEach var ="post" items="${postList.content}">
		 		
			      <div class="card">
			      		<figure>
			      			<div><img src="/img/${post.id}.jpg"></div>
			      			<figcaption>
			      			<span class="card-title">${post.title}</span>
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
		</div>
		
		<div class="main-text-boardBox">
			<div class="category-box">
				<div class="category-free">
					<p>자유 레시피</p>
					<div class="table-box">
						<table> 
					      	<tbody>
					        	<tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
					     	</tbody>
						</table>
						<table>
					      	<tbody>
					        	<tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목</td>
						        </tr>
						        <tr>
						          <td>작성자</td>
						          <td>제목제목제목제목제목</td>
						        </tr>
					     	</tbody>
						</table>
					</div>
				</div>
				<div class="categories">
					<div class="category-korean"></div>
					<div class="category-chinese"></div>
					<div class="category-western"></div>
					<div class="category-japanese"></div>
				</div>
			</div>
		</div>
	</section>
	

<script src="/js/main.js"></script>
<%@ include file="./layout/footer.jsp" %>
