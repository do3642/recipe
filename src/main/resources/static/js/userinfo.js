const userObject = {
	init:function(){
		//내정보 수정 클릭 시 클릭제어박스 및 알람 버튼 활성화
		$(".change-btn").on("click",(e)=>{
			e.preventDefault();
			$(".alert-box").slideDown();
			$(".none-click").addClass("active");
		});
		
		//아니요 클릭 시 비활성화
		$(".alert-button button").eq(1).on("click",(e)=>{
			e.preventDefault();
			$(".alert-box").slideUp();
			$(".none-click").removeClass("active");
		});
		
		//예 클릭시 서버에 수정요청
		$(".alert-button button").eq(0).on("click",(e)=>{
			e.preventDefault();
			this.updateUser();
		});

		
	},
	updateUser: ()=>{
			let user = {
				username:$("#id").val(),
				password: $("#pw").val(),
				nickname: $("#nickname").val(),
				tel: $("#tel").val(),
				address: $("#address").val()
				};
				console.log(user);
				$.ajax({
					type: "PUT",
					url: "/auth/update",
					data: JSON.stringify(user),
					contentType: "application/json; charset=utf-8"
					}).done(function(response){ // 실행성공 했을 때 
							alert(response.data);
							console.log('aa')
							if(response.status == 200) //중복으로 실패해도 메인페이지로 가서 막아줌
								location.href = "/"; //성공 후 메인페이지로
							}).fail(function(error){
								console.log(error);
							});
	}

}

userObject.init();