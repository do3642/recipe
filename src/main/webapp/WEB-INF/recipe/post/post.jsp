<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 게시물 등록</title>
<link rel="stylesheet" href="/css/post.css">


<%@ include file="../layout/nav.jsp" %>

	<section>
		<article>
		
			   <form>
			   		<div>
			   			
			   		</div>
				    <div>
				       <label for="title" class="form-label">Title</label><br>
				       <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
				    </div>
				    <div>
				       <label for="content" class="form-label">Content:</label><br>
				       <textarea class="form-control" id="content" rows="10"></textarea>
				    </div>
				     <button id="btn-insert" type="submit" class="btn btn-primary">게시물 등록</button>
			   </form>
		
		</article>
	</section>
	
<%@ include file="../layout/footer.jsp" %>