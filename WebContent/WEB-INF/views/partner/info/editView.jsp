<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>정보 수정 - WAP(We Are Professional)</title>
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
<script src="../../js/partner/editView.js"></script>
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
							<img src="../../images/IMG_0499.JPG" alt=""
								class="profile-img">
							<div class="username">${sessionScope.sessionId}</div>
							<div class="email">${email}</div>
						</div>
					</div>


					<div class="sidebar-nav">
						<ul>
							<li class="active"><a href="edit" style="color: #fff;">기본
									정보 수정</a></li>
							<li class=""><a href="bank-account">계좌 관리</a></li>
							<li class=""><a href="pwd-edit">비밀번호 변경</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->
			<div class="content">
				<main> <!-- -------page-header 영역-------------------------------- -->
				<div class="content-header">
					<section>
						<h1>기본 정보 수정</h1>
						<p>계정의 기본 정보들을 수정할 수 있습니다.</p>
					</section>
				</div>
				<!-- -------page-header 영역 끝-------------------------------- --> 
				
				
				
				<!-- -------page-main 영역-------------------------------- -->
				<div class="content-inner">
					<h4 style="margin-top: 0;">계정 정보</h4>
					<div class="account-setting-basic-block-account">
						<div class="account-setting-row profile-setting-row">
							<div class="account-setting-box">
								<span class="account-setting-category" style="padding-top: 0;">아이디</span>
								<span class="account-setting-content">${sessionScope.sessionId}</span>
							</div>
						</div>

						<div class="account-setting-box">
							<span class="account-setting-category">이메일</span> <span
								class="account-setting-content">${email}</span>
						</div>
					</div>
					<!-- --------계정 정보 끝----------------- -->


					<h4 style="margin-top: 0px;">기본 정보</h4>
					<form method="get" enctype="multipart/form-data">
						<c:forEach var="e" items="${partnerInfo}">
							<div class="form-group last-form-group"
								style="padding-top: 10px;">
								<div style="float: right">
									<input class="submit-btn" id="edit-button"
										style="margin-right: 10px; border-color: #94a2af; background-color: #94a2af;"
										type="button" value="수정" src="editViewModify">
										
								</div>
							</div>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>프로필 사진</label>
                                <img src="../../images/IMG_0499.JPG" style="width: 100px;height: 100px;">
                                
							</div>
							<br>


							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>파트너 형태</label>
								${e.type}
							</div>
							<br>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>이름</label>
								${e.name}
							</div>
							<br>

							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>성별</label>${e.gender}

							</div>
							<br>

							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>생년월일</label>${e.year}년
								${e.month}월 ${e.day}일
							</div>
							<br>



							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>지역 -
									시, 도</label> ${e.addr_name}


							</div>
							<br>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span>세부 지역
									- 시,군,구</label> ${e.sec_addr_name}
							</div>
							<br>
							<div class="info-input-form">
								<label class="signup-title-element"><span></span>나머지 주소</label>${e.last_addr}
							</div>
							<br>
						</c:forEach>



						<h4 style="margin-top: 0px;">연락처 정보</h4>
						<div class="info-input-form">
							<label class="signup-title-element"><span>*</span>핸드폰 번호</label>
							<select class="form-control" id="cell_phone_location"
								name="cell_phone_location"
								style="margin-right: 11px; width: 80px;"><option
									value="local">국내</option>
								<option value="global">해외</option></select> <span
								id="cell_phone_local_box" style="display: inline;"><select
								class="form-control" id="cell_phone_number_code"
								name="cell_phone_number_code"
								style="width: 80px; display: inline;"><option
										value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option></select><span class="form-phone-liner"
								style="display: inline;">-</span><input class="form-control"
								data-min-length="3" id="cell_phone_number_middle"
								name="cell_phone_number_middle" type="text" value=""
								style="display: inline;"><span class="form-phone-liner"
								style="display: inline;">-</span><input class="form-control"
								data-min-length="4" id="cell_phone_number_end"
								name="cell_phone_number_end" type="text" value=""
								style="display: inline;"></span>

						</div>
						<div class="form-group last-form-group" style="padding-top: 10px;">
							<div style="float: right">
								<input class="submit-btn" id="" style="margin-right: 10px;"
									type="submit" value="등록 완료">
							</div>
						</div>
					</form>


				</div>
			</div>
			</main>
			<!-- -------page-main 영역 끝-------------------------------- -->
		</div>
	</div>





	<!-- -------footer 영역-------------------------------- -->
	<jsp:include page="../../inc/footer.jsp" />
</body>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</html>