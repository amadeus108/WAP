<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>비밀번호 찾기 - WAP</title>

<!-- 부트스트랩 -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/member/style.min.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<link href="../css/footer.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->



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
				<h1>비밀번호 찾기</h1>
				<p>계정의 비밀번호를 잊으셨나요?</p>
			</section>
		</div>
		<!-- -------page-header 영역 끝-------------------------------- -->
		<div class="content-inner">
			<div class="content-container">
				<div class="signup-content">
					<form action="" method="post">
						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>이메일</label> <input
								type="email" class="form-control"
								pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
								id="formGroupExampleInput" required="required" name="email">
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"></label>
							<button type="submit" class="btn btn-primary btn-lg btn-block">비밀번호 찾기</button>
						</div>
					</form>


					<section class="find-pwd-form">
						<img src="../images/guide-success.png" class="guide-success">
						<div class="find-pwd-text">
							<p>
								1. 가입시 입력하신 "<strong>이메일</strong>"로 "<strong>임시 비밀번호</strong>"를
								발송해드립니다.
							</p>
							<p>
								2. 임시 비밀번호를 통해 로그인하신 뒤 <strong>새로운 비밀번호를 설정</strong>할 수 있습니다.
							</p>
						</div>
					</section>

				</div>



				<!-- -------사이드바 영역-------------------------------- -->
				<aside class="aside">
					<img id="find_pwd" src="../images/accounts_password_reset.png">
				</aside>
				<!-- -------사이드바 영역 끝-------------------------------- -->
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