<%@page import="com.wap.web.entity.Client"%>
<%@page import="java.util.List"%>
<%@page import="com.wap.service.SignupService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>회원가입 - WAP</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.min.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->

<script type="text/javascript">
	function checkValue() {
		if (document.userInfo.pwd.value != document.userInfo.pwdcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>

</head>
<body>
<!-- -------header 영역-------------------------------- -->
	<header class="header">
		<nav class="nav-main">
			<div class="container"></div>
		</nav>
		<div id="sub-header"></div>
	</header>
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">

		<!-- -------page-header 영역-------------------------------- -->
		<div class="content-header">
			<section>
				<h1>회원가입</h1>
				<p>WAP에 오신 것을 환영합니다.</p>
			</section>
		</div>
		<!-- -------page-header 영역 끝-------------------------------- -->

		<div class="content-inner">
		<div class="content-container">
				<div class="content">
					<form action="/member/signup" method="post" name="userInfo"
						onsubmit="return checkValue()">
							<label for="staticEmail" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>이용목적</label>
								<div id="membertype">
										<a>프로젝트를 의뢰하고 싶습니다.</a>
											<img id="signup" src="../images/signup_client_usage.png">
										<input type="radio" name="type" value="client">
										<a>클라이언트</a>
										<small id="emailHelp" class="form-text text-muted">의뢰할
												프로젝트가 있는 기업,개인</small>
											<a>일거리를 찾고 있습니다.</a>	
											<img id="signup" src="../images/signup_partner_usage.png">
										
											<input type="radio" name="type" value="partner">
										
										
											<small id="emailHelp" class="form-text text-muted">프로젝트를
												수주하고자 하는 기업,개인</small>
										
									</div>
						
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>이메일</label>
							
								<input type="email" class="form-control"
									pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
									id="formGroupExampleInput" required="required" name="email">
							
						
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>아이디</label>
							
								<input type="text" class="form-control"
									id="formGroupExampleInput2" required="required" name="id">
							
					
						
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>비밀번호</label>
							
								<input type="password" class="form-control"
									id="formGroupExampleInput2" required="required" name="pwd">
							
							<span id="small"><small id="emailHelp" class="form-text text-muted">비밀번호는
								8자 이상 32자 이하로 입력해 주세요.</small></span>
						
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>비민번호 재입력</label>
							
								<input type="password" class="form-control"
									id="formGroupExampleInput2" required="required" name="pwdcheck">
							
							<span id="small"><small id="emailHelp" class="form-text text-muted">동일한
								비밀번호를 입력해 주세요.</small></span>
						
						<label id ="checkbox">
						<input type="checkbox" required="required"> <span><a
							href="">이용약관</a> 및 <a href="">개인정보 처리방침</a>에 동의합니다.</span></label>
						<button type="submit" class="btn btn-primary btn-lg btn-block">회원가입</button>
					</form>
				</div>
<!-- -------사이드바 영역-------------------------------- -->
				<aside class="aside">
					<form action="/facebook/connect/?facebook_login=1"
						class="form-horizontal signup-aside-facebook has-validation-callback"
						id="facebook-connect-form" method="post">
						<input name="csrfmiddlewaretoken" type="hidden"
							value="M5Gc083HerECMxpX2dueKiWJ3WvpT6NM"><input
							name="register_next" type="hidden"
							value="/accounts/signup/facebook/">
						<div class="form-group">
							<div id="already-member">
								<strong>페이스북 계정이 있으신가요?</strong> <a href=""><img
									alt="페이스북으로 회원가입" src="../images/facebook-login.png"> </a>

							</div>
						</div>
					</form>
					<p id="already-member">
							이미 회원이신가요? <a href="../member/login.jsp">로그인</a>
						</p>
				</aside>
				<!-- -------사이드바 영역 끝-------------------------------- -->
				</div>
			</div>
		</div>
</body>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>