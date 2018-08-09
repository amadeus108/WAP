<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>회원가입 - WAP</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<link href="../css/footer.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->
<script src="../js/member/signup.js"></script>

</head>
<body>
	<!-- -------header 영역-------------------------------- -->
	<jsp:include page="../inc/header.jsp" />
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
				<div class="signup-content">
					<form method="post" enctype="application/x-www-form-urlencoded"
						name="userInfo" onsubmit="return checkValue()">

						<label class="signup-title-element"><span>*</span>이용목적</label>


						<div class="type-form">
							<ul>
								<li><label>
										<p>프로젝트를 의뢰하고 싶습니다.</p> <img id="signup"
										src="../images/signup_client_usage.png"> <br> <input
										type="radio" name="type" value="client" required="required">
										<p>클라이언트</p> <small
										class="form-text text-muted">의뢰할 프로젝트가 있는 기업,개인</small>
								</label></li>

								<li><label>
										<p>일거리를 찾고 있습니다.</p> <img id="signup"
										src="../images/signup_partner_usage.png"><br> <input
										type="radio" name="type" value="partner" required="required">
										<p>파트너스</p> <small class="form-text text-muted">프로젝트를
											수주하고자 하는 기업,개인</small>
								</label></li>
							</ul>
							<p>선택한 이용목적에 따라 서비스 이용에 차이가 발생합니다.</p>
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>이메일</label> <input
								type="email" class="form-control"
								pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
								id="formGroupExampleInput" required="required" name="email">
							<label class="signup-title-element"></label><small
								class="form-text text-muted" id="confirm-Email"></small>
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>아이디</label> <input
								type="text" class="form-control" id="formGroupExampleInput2"
								required="required" name="id">
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>비밀번호</label> <input
								type="password" class="form-control" id="formGroupExampleInput3"
								required="required" name="pwd"> <label
								class="signup-title-element"></label><small id="emailHelp"
								class="form-text text-muted">비밀번호는 특수문자를 포함한 6자 이상 20자 이하로 입력해
								주세요.</small>
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>비밀번호
								재입력</label> <input type="password" class="form-control"
								id="formGroupExampleInput4" required="required" name="pwdcheck">
							<label class="signup-title-element"></label> <small
								class="form-text text-muted" id="check-pwd">동일한 비밀번호를 입력해 주세요.</small>
						</div>




						<div class="textbox-form">
							<label class="signup-title-element"></label> <input
								type="checkbox" required="required"><span><a
								href="">이용약관</a> 및 <a href="">개인정보 처리방침</a>에 동의합니다.</span>
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"></label>
							<button type="submit" class="btn btn-primary btn-lg btn-block">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp" />
</body>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>