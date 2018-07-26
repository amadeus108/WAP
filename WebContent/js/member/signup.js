window.addEventListener("load",function() {
	var email = document.getElementById("formGroupExampleInput");
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var cEmail = document.getElementById("confirm-Email");

		email.onkeyup = function() {
			if (email.value.match(regExp) != null) {
				cEmail.innerText = "";
			} else {
				cEmail.innerText = "이메일 형식이 아닙니다.";
            }
            if(email.value == ""){
                cEmail.innerText = "";
            }
		}
});
window.addEventListener("load",function(){
    var pwd = document.getElementById("formGroupExampleInput3");
    var cPwd = document.getElementById("emailHelp");
    var regExp = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;

    pwd.onkeyup = function(){
        if (pwd.value.match(regExp) != null){
            cPwd.innerText = '다음 비밀번호를 재입력 해주세요.';
        }else{
            cPwd.innerText = '반드시 6~20 영문 대소문자, 최소 1개이상 특수문자를 포함해야합니다.';
        }
        if (pwd.value == "") {
            cPwd.innerText = '비밀번호는 8자 이상 32자 이하로 입력해주세요.';
        }      
    }  
});
window.addEventListener("load", function () {
    var pwd = document.getElementById("formGroupExampleInput3");
    var chPwd = document.getElementById("formGroupExampleInput4");
    var checking = document.getElementById("check-pwd");


    chPwd.onkeyup = function(){
        if(pwd.value != chPwd.value){
            checking.innerText = '입력하신 비밀번호와 일치하지 않습니다.';
        }else{
            checking.innerText = '이용약관에 동의하세요.';
        }if(chPwd.value == ""){
            checking.innerText = '동일한 비밀번호를 입력해 주세요.';
        }
    }

});
