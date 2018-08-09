<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>로그인 - WAP</title>

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

<script src="../js/member/login.js"></script>

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
				<h1>로그인</h1>
				<p>WAP에 오신 것을 환영합니다.</p>
			</section>
		</div>
		<!-- -------page-header 영역 끝-------------------------------- -->
		<div class="content-inner">
			<div class="content-container">
				<div class="signup-content">
					<form method="post">
						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>아이디</label> <input
								type="text" class="form-control" id="formGroupExampleInput2"
								required="required" name="id">
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"><span>*</span>비밀번호</label> <input
								type="password" class="form-control" id="formGroupExampleInput2"
								required="required" name="pwd">
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"></label> <input type="radio"
								name="type" value="client"> <span>클라이언트회원</span> <input
								type="radio" name="type" value="partner"> <span>파트너스회원</span>
						</div>

						<div class="textbox-form">
							<label class="signup-title-element"></label>
							<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
						</div>
						<div class="textbox-form">
							<label class="signup-title-element"></label>
							<p id="already-member" style="display: flex;">
								비밀번호를 잊으셨나요? <a href="find_password">비밀번호 찾기</a>
							
								아직 회원이 아니신가요? <a href="signup">회원가입</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- -------footer 영역-------------------------------- -->
	<jsp:include page="../inc/footer.jsp" />
</body>



<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>