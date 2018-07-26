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
<title>기본 정보 수정 - WAP(We Are Professional)</title>
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
							<li class="active"><a href="edit" style="color: #fff;">기본 정보 수정</a></li>
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
				<!-- -------page-header 영역 끝-------------------------------- --> <!-- -------page-main 영역-------------------------------- -->

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
					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>프로필 사진</label> <img
							alt="jgh3021 사진" src="../../images/default_avatar.jpg">
					</div>
					<br>


					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>파트너 형태</label> <select
							class="form-control" id="form_of_business"
							name="form_of_business" required="required"><option
								selected="" value="individual">개인</option>
							<option value="team">팀</option>
							<option value="individual_business">개인 사업자</option>
							<option value="corporate_business">법인 사업자</option></select>
					</div>
					<br>
					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>이름</label> <input
							class="form-control" id="full_name" name="full_name" type="text"
							value="">
					</div>
					<br>

					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>성별</label>
						<div class="partner-info-form">
							<ul>
								<li><label class="radio-inline" for="gender_1"><input
										id="gender_1" name="gender" required="required" type="radio"
										value="m">남성</label></li>
								<li><label class="radio-inline" for="gender_2"><input
										id="gender_2" name="gender" required="required" type="radio"
										value="f">여성</label></li>
							</ul>
						</div>
					</div>
					<br>

					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>생년월일</label>
						<div class="partner-info-form">
							<div class="control-wrapper">
								<div class="dropdown-customize">
									<select class="form-control" name="year"><option
											value="">연도</option>
										<%
											for (int i = 2018; i >= 1942; i--) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</select> <select class="form-control" name="month"><option
											value="">월</option>
										<%
											for (int i = 1; i <= 12; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%></select> <select class="form-control" name="day"><option
											value="">일</option>
										<%
											for (int i = 1; i <= 31; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%></select>

								</div>
							</div>
						</div>
					</div>
					<br>


					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>지역 - 시,
							도</label> <select class="form-control" data-select-type="location"
							id="address-sido" name="address_sido"><option value="">시,
								도</option>
							<option value="1">서울특별시</option>
							<option value="2">부산광역시</option>
							<option value="3">대구광역시</option>
							<option value="4">인천광역시</option>
							<option value="5">광주광역시</option>
							<option value="6">대전광역시</option>
							<option value="7">울산광역시</option>
							<option value="8">세종특별자치시</option>
							<option value="9">경기도</option>
							<option value="10">강원도</option>
							<option value="11">충청북도</option>
							<option value="12">충청남도</option>
							<option value="13">전라북도</option>
							<option value="14">전라남도</option>
							<option value="15">경상북도</option>
							<option value="16">경상남도</option>
							<option value="17">제주특별자치도</option>
							<option value="20">---</option>
							<option value="18">해외</option></select>
					</div>
					<br>
					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>세부 지역 -
							시,군,구</label> <select class="form-control"
							data-select-type="detail_location" id="sigungu" name="sigungu"
							required="required" style="display: block;"><option
								value="">선택</option>
							<option value="1">강남구</option>
							<option value="2">강동구</option>
							<option value="3">강북구</option>
							<option value="4">강서구</option>
							<option value="5">관악구</option>
							<option value="6">광진구</option>
							<option value="7">구로구</option>
							<option value="8">금천구</option>
							<option value="9">노원구</option>
							<option value="10">도봉구</option>
							<option value="11">동대문구</option>
							<option value="12">동작구</option>
							<option value="13">마포구</option>
							<option value="14">서대문구</option>
							<option value="15">서초구</option>
							<option value="16">성동구</option>
							<option value="17">성북구</option>
							<option value="18">송파구</option>
							<option value="19">양천구</option>
							<option value="20">영등포구</option>
							<option value="21">용산구</option>
							<option value="22">은평구</option>
							<option value="23">종로구</option>
							<option value="24">중구</option>
							<option value="25">중랑구</option></select>
					</div>
					<br>
					<div class="info-input-form">
						<label class="signup-title-element"><span></span>나머지 주소</label> <input
							class="form-control" id="addr" name="addr" type="text" value="">
					</div>
					<br>
					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>세금계산서용
							이메일</label> <input class="form-control" id="addr" name="addr" type="text"
							value="">
					</div>
					<div class="form-group last-form-group" style="padding-top: 10px;">
						<div style="float: right">
							<input class="submit-btn" id="" style="margin-right: 10px;"
								type="submit" value="등록 완료">
						</div>
					</div>
					<h4 style="margin-top: 0px;">연락처 정보</h4>
					<div class="info-input-form">
						<label class="signup-title-element"><span>*</span>핸드폰 번호</label> <select
							class="form-control" id="cell_phone_location"
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


					<div class="info-input-form">
						<label class="signup-title-element">전화번호</label>
						<div class="control-wrapper">
							<select class="form-control" data-exception="yes"
								id="phone_number_code" name="phone_number_code"
								style="width: 95px;"><option>---</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
								<option value="070">070</option>
								<option value="999">해외</option></select><span class="form-phone-liner"
								style="margin-left: 11px; margin-right: 11px;">-</span><input
								class="form-control" data-exception="yes"
								id="phone_number_entered" name="phone_number_entered"
								style="*width: 190px;" type="text" value="">
						</div>
					</div>
					<div class="info-input-form">
						<label class="signup-title-element">팩스 번호</label> <input
							class="form-control" id="fax" name="fax" type="text" value="">
					</div>
					<div class="form-group last-form-group" style="padding-top: 10px;">
						<div style="float: right">
							<input class="submit-btn" id="" style="margin-right: 10px;"
								type="submit" value="등록 완료">
						</div>
					</div>


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