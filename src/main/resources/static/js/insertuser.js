
const regexId = /^\w{5,20}$/;
const regexPw = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
const regexNickname =/^[가-힣a-zA-Z0-9]{2,10}$/;
const regexName = /^[가-힣a-zA-Z]+$/;
const regexTel =  /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
const regexCheck = /[~!@#$%^&*()_+|<>?:{}]/gi;

let isIdCheck=false;
let isPwcheck=false;
let isNicknameCheck=false;
let isClientnameCheck=false;
let isTelCheck=false;
let isAddressCheck=false;


//아이디 정규식
$("#id").on("input",()=>{
	
	if(regexId.test($("#id").val())){
		$("form span").eq(0).html("사용 가능한 아이디 입니다.");
		$("form span").eq(0).css("color","green");
		isIdCheck = true;
	}else{
		$("form span").eq(0).html("사용 불가능한 아이디 입니다.");
		$("form span").eq(0).css("color","red");
		isIdCheck = false;
	}
	insertBtn();

});

//패스워드 정규식
$("#pw").on("input",()=>{
	
	if(regexPw.test($("#pw").val())){
		$("form span").eq(1).html("사용 가능한 비밀번호 입니다.");
		$("form span").eq(1).css("color","green");
		isPwcheck = true;
	}else{
		$("form span").eq(1).html("사용 불가능한 비밀번호 입니다.");
		$("form span").eq(1).css("color","red");
		isPwcheck = false;
	}

	insertBtn();
});

//닉네임 정규식
$("#nickname").on("input",()=>{
	
	if(regexNickname.test($("#nickname").val())){
		$("form span").eq(2).html("사용 가능한 닉네임 입니다.");
		$("form span").eq(2).css("color","green");
		isNicknameCheck = true
	}else{
		$("form span").eq(2).html("사용 불가능한 닉네임 입니다.");
		$("form span").eq(2).css("color","red");
		isNicknameCheck = false;
	}
	insertBtn();

});



$("#client-name").on("input",()=>{
	if(regexName.test($("#client-name").val())){
		isClientnameCheck= true;
	}else{
		isClientnameCheck= false;
	}
	insertBtn();
});
$("#tel").on("input",()=>{
	if($("#tel").val() != ""){
		isTelCheck= true;
	}else{
		isTelCheck= false;
	}
	insertBtn();
});
$("#address").on("input",()=>{
	if($("#address").val() != ""){
		isAddressCheck= true;
		
	}else{
		isAddressCheck= false;
	}
	insertBtn();
});





// 데이터가 다 들어있어야 가입버튼 활성화
function insertBtn(){
	if(isIdCheck && isPwcheck && isNicknameCheck&&isClientnameCheck&&isTelCheck&&isAddressCheck){
		$(".insert-btn").removeAttr("disabled");
	}else{
		$(".insert-btn").attr("disabled",true);
	}

		
}







