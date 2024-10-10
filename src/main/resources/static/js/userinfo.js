$(".change-btn").on("click",(e)=>{
	e.preventDefault();
	$(".alert-box").slideDown();
	$(".none-click").addClass("active");
});
