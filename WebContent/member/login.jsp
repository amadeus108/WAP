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
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.min.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->



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
				<h1>로그인</h1>
				<p>WAP에 오신 것을 환영합니다.</p>
			</section>
		</div>
		<!-- -------page-header 영역 끝-------------------------------- -->
		<div class="content-inner">
			<div class="content-container">
				<div class="content">
					<form action="/loginService" method="post" class="signup-form">
						<div class="form-group">
							<label for="exampleInputEmail1"><a style="color: red;">*</a>아이디</label>
							<input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="아이디를 입력하세요" name="id">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1"><a style="color: red;">*</a>비밀번호</label>
							<input type="password" class="form-control"
								id="exampleInputPassword1" placeholder="비밀번호를 입력하세요" name="pwd">
						</div>
						<div class="form-check">
							<label class="form-check-label"> <input type="checkbox"
								class="form-check-input"> 로그인 상태 유지
							</label>
						</div>
						<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
						<div id="already-member">
							<p>비밀번호를 잊으셨나요?</p>
							<a href="../member/find_password.jsp">비밀번호 찾기</a>
						</div>
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
								<strong>이미 페이스북으로 가입하셨다면</strong> <a href=""><img
									alt="페이스북으로 회원가입" src="../images/facebook-login.png"> </a>

							</div>
						</div>
					</form>
					<p id="already-member">
						아직 회원이 아니신가요? <a href="../member/signup.jsp">회원가입</a>
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