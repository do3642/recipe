const postObject ={
	init: function(){
		$("#btn-update").on("click",(e)=>{
			e.preventDefault();
			this.updatePost();
		});
		$("#btn-delete").on("click",(e)=>{
			e.preventDefault();
			this.deletePost();
		});
		
	},
	updatePost: ()=>{
		if(!confirm("수정하시겠습니까?"))
			return;
	const post = {
			id : $("#id").val(),
			title : $("#title").val(),
			content : $("#content").val()
		};
	
	$.ajax({
		type: "PUT",
		url: "/post",
		data: JSON.stringify(post),
		contentType: "application/json; charset=utf-8"
		}).done(function(response){ // 실행성공 했을 때
			alert(response.data);
			if(response.status == 200) 
				location.href = "/post/"+ post.id; //성공 후 메인페이지로
		}).fail(function(error){
			console.log(error);
		});
	},
	deletePost: ()=>{
		if(!confirm("삭제하시겠습니까?"))
			return;
		const id = $("#id").val();
		
		$.ajax({
		type: "DELETE",
		url: `/post/${id}`
		}).done(function(response){ // 실행성공 했을 때
			alert(response.data);
			if(response.status == 200) 
				location.href = "/"; //성공 후 메인페이지로
		}).fail(function(error){
			console.log(error);
		});
	}
}

postObject.init();