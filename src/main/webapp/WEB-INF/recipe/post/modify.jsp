<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 게시물수정</title>

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  	<!-- include libraries(jQuery, bootstrap) -->
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  	<!-- include summernote css/js -->
		<link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.js"></script>
	<link rel="stylesheet" href="/css/insertPost.css">


<%@ include file="../layout/nav.jsp" %>

	<section>
		<article>
		
			   <form>
					<input type="hidden" id="id" value="${post.id}">
				    <div>
						<label for=thumbnail class="form-label">썸네일</label><br>
				       <input type="file" class="form-control" id="thumbnail" placeholder="Enter title" name="thumbnail"><br>
				       <label for="title" class="form-label">Title</label><br>
				       <input type="text" class="form-control" id="title" placeholder="Enter title" name="title" value="${post.title}">
				    </div>
				    <div>
				       <label for="content" class="form-label">Content:</label><br>
				       <textarea class="form-control" id="content" rows="10">${post.content}</textarea>
				    </div>
				     <button id="btn-update" type="submit" class="btn btn-primary">게시물 수정</button>
			   </form>
		
		</article>
	</section>

<script src="/js/postModify.js"></script>
<%@ include file="../layout/footer.jsp" %>