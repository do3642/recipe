<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<title>요리연구소 게시물 등록</title>


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
	
				    <div>
						<label for=thumbnail class="form-label">썸네일</label><br>
				       <input type="file" class="form-control" id="thumbnail" placeholder="Enter title" name="thumbnail"><br>
				       <label for=category class="form-label">카테고리</label><br>
				       <select name="category" id="category">
							<option value="자유">자유</option>
							<option value="한식">한식</option>
							<option value="중식">중식</option>
							<option value="양식">양식</option>
							<option value="일식">일식</option>
						</select><br>	
				       <label for="title" class="form-label">레시피이름</label><br>
				       <input type="text" class="form-control" id="title" placeholder="제목 입력" name="title">
				    </div>
				    <div>
				       <label for="content" class="form-label">설명</label><br>
				       <textarea class="form-control" id="content" rows="10" cols="50"></textarea>
				    </div>
				     <button id="btn-insert" type="submit" class="btn btn-primary">게시물 등록</button>
			   </form>
		
		</article>
	</section>

<script src="/js/post.js"></script>
<%@ include file="../layout/footer.jsp" %>