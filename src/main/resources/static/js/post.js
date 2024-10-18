$(document).ready(function(){
	$("#content").summernote(); // #content = textarea 아이디
});



const postObject = {
	init :function() {
		$("#btn-insert").on("click", (e)=>{
			e.preventDefault();
			this.insertPost();
		});
		
	},
	insertPost: () =>{
		
		let post = {
			thumbnail: $("#thumbnail").val(),
			category: $("#category").val(),
			title: $("#title").val(),
			content: $("#content").val()
		}
		
		$.ajax({
			type:"POST",
			url: "/post",
			data:JSON.stringify(post),
			contentType: "application/json; charset=utf-8"
		}).done(function(response){
			console.log('1');
			alert(response.data);
			if(response.status == 200) 
				location.href = "/";
		}).fail(function(error){
			console.log(error);
		});
	}
}
postObject.init();