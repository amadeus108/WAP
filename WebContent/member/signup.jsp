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

</head>
<body>
	<div class="content">
		<div class="content-header">
			<section>
				<h1>회원가입</h1>
				<a>WAP에 오신 것을 환영합니다.</a>
			</section>
		</div>
		<div class="content-inner">
			<div class="row">
				<div class="col-sm-8">
					<form action="signup" method="post">
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>이용목적</label>
							<div class="col-sm-10">
								<div id="membertype">
									<div style="float: left;">
										<div>
											<a>프로젝트를 의뢰하고 싶습니다.</a>
										</div>
										<div>
											<img id="signup" src="../images/signup_client_usage.png">
										</div>
										<div>
											<input type="radio" name="type">
										</div>
										<div>
											<a>클라이언트</a>
										</div>
										<div>
											<a>-----------------</a>
										</div>
										<div>
											<small id="emailHelp" class="form-text text-muted">의뢰할
												프로젝트가 있는 기업,개인</small>
										</div>
									</div>

									<div style="float: left;">
										<div>
											<a>일거리를 찾고 있습니다.</a>
										</div>
										<div>
											<img id="signup" src="../images/signup_partner_usage.png">
										</div>
										<div>
											<input type="radio" name="type">
										</div>
										<div>
											<a>파트너스</a>
										</div>
										<div>
											<a>-----------------</a>
										</div>
										<div>
											<small id="emailHelp" class="form-text text-muted">프로젝트를
												수주하고자 하는 기업,개인</small>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>이메일</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$"
									id="formGroupExampleInput" required="required">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>아이디</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									id="formGroupExampleInput2" required="required">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>비밀번호</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"
									id="formGroupExampleInput2" required="required">
							</div>
							<small id="emailHelp" class="form-text text-muted">비밀번호는
								8자 이상 32자 이하로 입력해 주세요.</small>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label"><a
								style="color: red;">*</a>비민번호 재입력</label>
							<div class="col-sm-10">
								<input type="password" class="form-control"
									id="formGroupExampleInput2" required="required">
							</div>
							<small id="emailHelp" class="form-text text-muted">동일한
								비밀번호를 입력해 주세요.</small>
						</div>
						<input type="checkbox"> <a href="">이용약관</a> 및 <a href="">개인정보
							처리방침</a>에 동의합니다. <br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">회원가입</button>
					</form>
				</div>

				<div class="col-sm-4">
					<aside>
					
					<div class="form-group">
							<div class="btn-block-wrapper">
								<strong>페이스북 계정이 있으신가요?</strong>
								<div id="spinner"
									style="background: #4267b2; border-radius: 5px; color: white; height: 40px; text-align: center; width: 250px;">
									페이스북으로 로그인
									<div class="fb-login-button" data-max-rows="1"
										data-size="large" data-button-type="continue_with"
										data-use-continue-as="true"></div>
								</div>
							</div>
						</div>
							<a>이미 회원이신가요? </a><a href="../member/login.jsp">로그인</a>
					</aside>
				</div>
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