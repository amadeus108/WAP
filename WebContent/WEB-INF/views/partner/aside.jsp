<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>기본 정보 수정</title>

<!-- 부트스트랩 -->
<link href="../../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../../css/member/style.min.css" rel="stylesheet">
<link href="../../css/header-footer.css" rel="stylesheet">
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
							<li class="active"><a class="active"
								href="">기본 정보 수정</a></li>
							<li class=""><a href="bank-account.jsp">계좌 관리</a></li>
							<li class=""><a href="">비밀번호 변경</a></li>
							<li class=""><a
								href="/accounts/settings/notification_setting/">알림 설정</a></li>
							<li class=""><a
								href="/accounts/settings/relogin/withdrawal/">회원 탈퇴</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
</body>
</html>