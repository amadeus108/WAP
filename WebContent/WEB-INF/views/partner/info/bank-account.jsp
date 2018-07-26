<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>계좌관리 - WAP(We Are Professional)</title>

<!-- 부트스트랩 -->
<link href="../../css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="../../css/member/style.min.css" rel="stylesheet">
<link href="../../css/partner/aside.css" rel="stylesheet">
<link href="../../css/header.css" rel="stylesheet">
<link href="../../css/footer.css" rel="stylesheet">

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
							<li class="active"><a href="bank-account" style="color: #fff;">계좌 관리</a></li>
							<li class=""><a href="pwd-edit">비밀번호 변경</a></li>
						</ul>
					</div>
				</div>
			</aside>
			<!-- -------사이드바 영역 끝-------------------------------- -->

			<div class="content">
				<main class="content">
				<div class="content-header">
					<section>
						<h1>계좌 관리</h1>
						
						<p>프로젝트 대금을 지급받을 계좌 정보를 등록해주세요.</p>
					</section>
				</div>

				<div class="content-inner">
					<div class="process-guide-box" style="margin-bottom: 25px;">
						<img src="../../images/process-guide-warning.png"
							style="margin-right: 15px;">
						<div class="process-guide-up">
							<div class="process-guide-up-title" style="margin-bottom: 5px;">[
								계좌 관리 가이드 ]</div>
							<div class="process-guide-up-content">
								프로젝트 대금의 안전한 송금을 위해 <strong>정확한 계좌번호</strong>가 필요합니다.
							</div>
						</div>
					</div>
					<h4>계좌 등록</h4>
					<form action="" method="post">
						<section>
							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span> 은행명</label> <select
									class="form-control" id="id_bank" name="bank"
									required="required"><option value="">은행 선택</option>
									<option value="1">한국산업은행</option>
									<option value="2">기업은행</option>
									<option value="3">국민은행</option>
									<option value="4">우리은행</option>
									<option value="5">신한은행</option>
									<option value="6">하나은행</option>
									<option value="7">농협</option>
									<option value="8">단위농협</option>
									<option value="9">SC은행</option>
									<option value="10">외환은행</option>
									<option value="11">한국씨티은행</option>
									<option value="12">우체국</option>
									<option value="13">경남은행</option>
									<option value="14">광주은행</option>
									<option value="15">대구은행</option>
									<option value="16">도이치</option>
									<option value="17">부산은행</option>
									<option value="18">산림조합</option>
									<option value="19">산업은행</option>
									<option value="20">상호저축은행</option>
									<option value="21">새마을금고</option>
									<option value="22">수협</option>
									<option value="23">신협중앙회</option>
									<option value="24">전북은행</option>
									<option value="25">제주은행</option>
									<option value="26">BOA</option>
									<option value="27">HSBC</option>
									<option value="28">JP모간</option>
									<option value="29">교보증권</option>
									<option value="30">대신증권</option>
									<option value="31">대우증권</option>
									<option value="32">동부증권</option>
									<option value="33">동양증권</option>
									<option value="34">메리츠증권</option>
									<option value="35">미래에셋</option>
									<option value="36">부국증권</option>
									<option value="37">삼성증권</option>
									<option value="38">솔로몬투자증권</option>
									<option value="39">신영증권</option>
									<option value="40">신한금융투자</option>
									<option value="41">우리투자증권</option>
									<option value="42">유진투자은행</option>
									<option value="43">이트레이드증권</option>
									<option value="44">키움증권</option>
									<option value="45">하나대투</option>
									<option value="46">하이투자</option>
									<option value="47">한국투자</option>
									<option value="48">한화증권</option>
									<option value="49">현대증권</option>
									<option value="50">HMC증권</option>
									<option value="51">LIG투자증권</option>
									<option value="52">NH증권</option>
									<option value="53">SK증권</option>
									<option value="54">비엔비파리바은행</option>
									<option value="55">케이뱅크</option>
									<option value="56">카카오뱅크</option></select>
							</div>

							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span> 예금주</label> <input
									class="form-control" id="id_account_holder" maxlength="30"
									name="account_holder" required="required" type="text">
							</div>

							<div class="info-input-form">
								<label class="signup-title-element"><span>*</span> 계좌번호</label>
								<input class="form-control" id="id_account_number"
									maxlength="30" name="account_number" required="required"
									type="text">
							</div>
							<div class="info-input-form">
								<label class="signup-title-element"></label> <span
									class="help-block">'-'를 제외하고 입력해주세요.</span>
							</div>

							<div class="form-group last-form-group"
								style="padding-top: 10px;">
								<div style="float: right">
									<input class="submit-btn" id="" style="margin-right: 10px;"
										type="submit" value="등록 완료">
								</div>
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