<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>비밀번호 번경 - WAP(We Are Professional)</title>

<!-- 부트스트랩 -->
<link href="../../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../../css/member/style.min.css" rel="stylesheet">
<link href="../../css/header.css" rel="stylesheet">
<link href="../../css/footer.css" rel="stylesheet">
<link href="../../css/partner/aside.css" rel="stylesheet">
<link href="../../css/partner/partner-input-form.css" rel="stylesheet">

<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!-- —[if lt IE 9] -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<!-- [endif] -->

</head>
<body>
	<!-- -------header 영역-------------------------------- -->
	<jsp:include page="../../inc/header.jsp" />
	<!-- -------header 영역 끝------------------------------- -->

	<!-- -------page 영역-------------------------------- -->
	<div class="page">
		<div class="content-container">

			<!-- -------사이드바 영역-------------------------------- -->
			<aside class="aside">
				<h1>파트너스 사이드 바</h1>
				<div class="sidebar">
					<div class="user-name-tag">
						<h3 class="user-name-tag-heading">파트너스</h3>
						<div class="user-name-body">
							<img src="../../images/default_avatar.jpg" alt=""
								class="profile-img">
							<div class="username">${sessionScope.sessionId}</div>
							<div class="email">${email}</div>
						</div>
					</div>


					<div class="sidebar-nav">
						<ul>
							<li class=""><a href="edit">기본 정보 수정</a></li>
							<li class=""><a href="bank-account">계좌 관리</a></li>
							<li class="active"><a href="pwd-edit" style="color: #fff;">비밀번호 변경</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->

			<div class="content">
				<main class="content">
				<div class="content-header">
					<section>
						<h1>비밀번호 변경</h1>
						<p>개인정보 보호를 위해 주기적으로 비밀번호를 변경해주세요.</p>
					</section>
				</div>
				<div class="content-inner">
					<div class="process-guide-box" style="margin-bottom: 25px;">
						<img src="../../images/process-guide-warning.png"
							style="margin-right: 15px;">
						<div class="process-guide-up">
							<div class="process-guide-up-title" style="margin-bottom: 5px;">[
								비밀번호 변경 가이드 ]</div>
							<div class="process-guide-up-content">
								다른 사이트에서 사용하지 않는 <strong>고유한 비밀번호</strong>를 사용하시고, 주기적으로 변경해주세요.
							</div>
						</div>
					</div>
					<h4>보안 로그인</h4>
					<form method="POST">
						<section>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span> 이메일</label> <span
									class="help-block">${email}</span>
							</div>
							<br>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span> 비밀번호</label>
								<input class="form-control" id="id_account_holder"
									maxlength="30" name="account_holder" required="required"
									type="text">
							</div>

							<div class="form-group last-form-group"
								style="padding-top: 30px;" align="center">
								<button type="submit" class="btn btn-primary btn-lg btn-block">로그인</button>
							</div>
						</section>
					</form>
				</div>


				</main>
			</div>

		</div>
	</div>
	<jsp:include page="../../inc/footer.jsp" />
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>