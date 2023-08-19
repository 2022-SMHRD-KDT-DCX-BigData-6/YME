<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<meta name="description" content="">
<meta name="author" content="Tooplate">

<title>yme.com</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Unbounded:wght@300;400;700&display=swap"
	rel="stylesheet">

<link href="./resources/css/bootstrap.min.css" rel="stylesheet">

<link href="./resources/css/bootstrap-icons.css" rel="stylesheet">

<link href="./resources/css/apexcharts.css" rel="stylesheet">

<link href="./resources/css/fontawesome-all.min.css" rel="stylesheet">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/swiper-bundle.css">

<script src="./resources/js/swiper-bundle.min.js"></script>
<script src="./resources/js/swiper-bundle.min2.js"></script>
<script src="./resources/js/swiper-bundle.min3.js"></script>


</head>
<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="main.do"><img src=".\resources\images\mainLogo.png" style="width: 10%;">
				10-Minutes
			</a>
		</div>

		
	</header>

	<form id="frm" action="${cpath }/register.do" method="post">
		<div class="swiper-container"
			style="background: var(- -section-bg-color); min-height: calc(100vh - 65px);">
			<div class="swiper-wrapper" style="align-items: flex-start;">
				<!-- 약관동의 페이지 -->
				<div class="swiper-slide">
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div class="content" style="margin: 0; width: 100%;">
							<div class="section">
								<div
									style="font-weight: 700; font-size: 24px; line-height: 34px; padding: 78px 20px 40px 20px;">
									안녕하세요! <br> <span style="font-weight: 400;">가입을 위해
										약관 동의가 <br> 필요합니다.
									</span>

								</div>
								<div>
									<div class="checkbox_group"
										style="margin: 0 20px; text-align: left;">
										<!--전체동의-->
										<div class="chk_all" onclick="chk_all(this)"
											style="width: 100%; color: #FFFFFF; background: #D9D9D9; text-align: center; border-radius: 5px; margin-bottom: 40px; padding: 10px 20px;">
											<div
												style="display: flex; justify-content: center; align-items: center; width: 60%; font-weight: 500; font-size: 18px; margin: 0 auto;">
												<span
													style="position: relative; width: 13px; height: 8px; margin-right: 10px; border-bottom: 2px solid #FFFFFF; border-left: 2px solid #FFFFFF; transform: rotate(-45deg); bottom: 3px;"></span>
												네, 모두 동의합니다.
											</div>
										</div>
										<!--1번 약관-->
										<div class="Question_1"
											style="display: flex; justify-content: space-between; width: 100%; margin-bottom: 35px;">
											<div onclick="chk_term(this, '1')"
												style="width: 90%; font-weight: 400; font-size: 14px; line-height: 17px; letter-spacing: -0.02em;">
												<i class="fa fa-check terms chk_1" aria-hidden="true"
													style="color: rgb(204, 204, 204); padding-bottom: 0px; margin-right: 15px;"></i>
												서비스 이용약관 동의 (필수)
											</div>
											<div onclick="show_term(this, '1')"
												style="width: 10%; text-align: center; color: #999999; font-size: 13px; line-height: 16px; letter-spacing: -0.02em; text-decoration-line: underline;">보기</div>
										</div>
										<div class="Answer_1" style="display: none;">
											<div class="signup_terms mb-2">
												<p>
													제 1조(목적)<br> 이 약관은 (주)게더링(이하 '회사')이 제공하는 마이캠퍼스 서비스(이하
													'서비스')를 이용하는 서비스 사용자(이하 '회원')와 관련하여 회사와 회원과의 권리, 의무 및 책임사항,
													운영수칙, 기타 필요한 사항을 규정함을 목적으로 합니다.
												</p>
												<p>
													제 2조(정의)<br> 1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
													• "회사"란, 서비스를 제공하는 주체를 말합니다.<br> • "서비스"란, 회사가 제공하는 모든
													서비스 및 기능을 말합니다.<br> • "이용자"란, 이 약관에 따라 서비스를 이용하는 회원 및
													비회원을 말합니다.<br> • "회원"이란, 서비스에 회원 가입을 하고 서비스를 이용하는 자를
													말합니다.<br> • "비회원"이란, 서비스에 회원 가입을 하지 않고 서비스를 이용하는 자를
													말합니다.<br> • “아이디”란, 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가
													승인하는 문자 또는 문자와 숫자의 조합을 의미합니다.<br> • "게시물"이란, 서비스에 게재된
													문자, 사진, 첨부파일, 광고 등을 말합니다.<br> • "커뮤니티"란, 게시물을 게시할 수 있는
													공간을 말합니다.<br> • "동아리"이라 함은 회사의 서비스를 통해 회원이 직접 만든 그룹으로
													한 명 이상의 회원들과 모여 자유롭게 관심사를 공유하고 친목을 도모할 수 있도록 회사가 제공하는 서비스를
													의미합니다.<br> • "동아리 회장"이라 함은 회사가 제공하는 서비스를 통해 동아리을 개설한
													회원 및 동아리의 대표 권한을 양도받은 회원을 의미합니다.<br> • "운영진"이라 함은 동아리
													회장 및 운영진에 의해 임명된 동아리 운영 및 관리의 책임이 있는 회원을 의미합니다.<br> •
													"계정"이란, 이용계약을 통해 생성된 회원의 고유 아이디와 이에 수반하는 정보를 말합니다.<br>
													• "연락처"란, 회원가입, 본인 인증, 문의 등을 통해 수집된 이용자의 휴대전화 번호 등을 의미합니다.<br>
													• "학교 인증"이란, 학생증을 이용한 학적 확인 절차를 말합니다.<br> • 이 약관에서
													사용하는 용어 중 본 조에서 정하지 아니한 것은 “마이캠퍼스” 이용약관, 관계 법령에서 정하는 바에 따르며
													그 외에는 일반적인 관례에 따릅니다.<br> 2. 1항에서 정의되지 않은 약관 내 용어의 의미는
													일반적인 이용관행에 의합니다.<br>
												</p>
												<p>
													제 3조(약관 등의 명시와 설명 및 개정)<br> 1. 회사는 이 약관을 회원가입 화면 및 "내
													정보" 메뉴 등에 게시합니다.<br> 2. 회사는 “약관의 규제에 관한 법률”, “정보통신망
													이용촉진 및 정보보호 등에 관한 법률” 등 관련법을 위반하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>
													3. 회사가 약관을 개정할 경우에는 제1항의 방식에 따라 개정약관의 적용일자 30일 전부터 공지합니다.
													다만 “회원”에게 불리하게 약관내용을 개정하는 경우에는 공지 외에 일정기간 “마이캠퍼스” 로그인 시 동의
													창 등의 전자적 수단을 통해 따로 명확히 통지하도록 합니다.<br> 4. 회사가 전항에 따라
													개정약관을 공지 또는 통지하면서 “회원”에게 30일 내에 거부의 의사표시를 하지 않으면 개정약관에 동의한
													것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 않은 경우
													회원이 개정약관에 동의한 것으로 봅니다.<br> 5. 회원은 약관 일부분만을 동의 또는 거부할 수
													없습니다. 6. 비회원이 서비스를 이용할 경우, 이 약관에 동의한 것으로 간주합니다.
												</p>
												<p>
													제 4조(서비스의 제공)<br> 1. 회사는 다음 서비스를 제공합니다.<br> •
													커뮤니티 서비스<br> • 동아리 정보 제공 서비스<br> • 동아리 회원 관리 서비스<br>
													• 동아리 회계 관리 서비스<br> • QR 촬영 및 관리 서비스<br> • 할인,
													이벤트, 프로모션, 광고 정보 제공 서비스<br> • 기타 회사가 정하는 서비스<br>
													2. 회사는 운영상, 기술상의 필요에 따라 제공하고 있는 서비스를 변경할 수 있습니다.<br>
													3. 회사는 이용자의 개인정보 및 서비스 이용 기록에 따라 서비스 이용에 차이를 둘 수 있습니다.<br>
													4. 회사는 천재지변, 인터넷 장애, 경영 악화 등으로 인해 서비스를 더 이상 제공하기 어려울 경우,
													서비스를 통보 없이 중단할 수 있습니다.<br> 5. 회사는 1항부터 전항까지와 다음 내용으로
													인해 발생한 피해에 대해 어떠한 책임을 지지 않습니다.<br> • 모든 서비스, 게시물, 이용
													기록의 진본성, 무결성, 신뢰성, 이용가능성<br> • 서비스 이용 중 타인과 상호 간에 합의한
													내용<br> • 게시물, 광고의 버튼, 하이퍼링크 등 외부로 연결된 서비스와 같이 회사가 제공하지
													않은 서비스에서 발생한 피해<br> • 이용자의 귀책사유 또는 회사의 귀책 사유가 아닌 사유로
													발생한 이용자의 피해<br>
												</p>
												<p>
													제 5조(서비스 이용계약의 성립)<br> 1. 이용계약은 회원이 되고자 하는 자('가입신청자')가
													처음 서비스 실행시 약관의 내용에 대하여 동의를 한 다음 가입신청자가 회원가입신청을 하고 회사가 이러한
													신청에 대하여 승낙함으로써 체결됩니다.<br> 2. 회사의 서비스 이용을 위해 이용자가 제1항과
													같이 동의한 후, 서비스 이용을 위하여 절차에 따른 필수사항을 입력하고, "확인" 을 누르는 방법으로
													합니다. 다만, 회사는 부정사용방지 및 본인확인을 위해 회원에게 본인 인증 및 학교 인증을 요청할 수
													있습니다.<br>
												</p>
												<p>
													제 6조(서비스 이용계약의 체결)<br> 1. 회사는 다음 각 호에 해당하는 신청에 대하여는
													승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.<br> • 가입신청자가 이 약관에
													의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 회사의 회원 재가입 승낙을 얻은 경우에는 예외로 함.<br>
													• 타인의 명의를 이용한 경우<br> • 허위의 정보를 기재하거나, 회사가 제시하는 내용을
													기재하지 않은 경우<br> • 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반
													사항을 위반하며 신청하는 경우<br> • 그 밖에 기존 약관을 적용할 수 없는 특별한 사정이 있는
													경우<br> 2. 제1항에 따른 신청에 있어 회사는 회원의 종류에 따라 전문기관을 통한 실명확인
													및 본인인증을 요청할 수 있습니다.<br> 3. 회사의 서비스관련설비와 관련된 기술상 또는 업무상
													문제가 있는 경우에 승낙이 유보될 수 있습니다.<br> 4. 회사는 회원에 대해 관계법과
													회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수
													있습니다.<br>
												</p>
												<p>
													제 7조(회원의 정보 관리에 대한 의무)<br> 1. 회원의 아이디에 관한 관리책임은 회원에게
													있으며, 이를 타인이 이용하도록 하여서는 안 됩니다.<br> 2. 회사는 회원의 아이디가 개인정보
													유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인될 우려가 있는
													경우, 해당 아이디의 이용을 제한할 수 있습니다.<br> 3. 회원은 아이디가 도용되거나 타인이
													사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 회사의 안내에 따라야 합니다.<br>
													4. 제3항의 경우에 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지
													않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.<br> 5. 회원의 가입과 탈퇴가 포함된
													전체 서비스 활동내역과 관련된 로그 요청은 회사 측이 필요하다고 인정하는 경우를 제외하고는 당사자를
													불문하고 공개해드리지 않습니다.<br> 6. 서비스가 회원들간 쉽게 찾고 교류할 수 있도록 설계된
													만큼 회원의 프로필 정보는 누구에게나 공개되고 검색, 추천될 수 있습니다. 공개가 불편하거나 유출의 위험이
													있는 내용은 게재하지 않으셔야 하고 게재하신 경우 발생된 불이익에 대하여 회사는 책임지지 않습니다. 회사는
													천재지변, 테러, 폐교 등 불가피한 사유로 더 이상 서비스를 제공할 수 없을 경우, 회원의 동의 없이
													회원자격을 박탈할 수 있습니다.<br> 7. 회사는 1항부터 전항까지로 인해 발생한 피해에 대해
													어떠한 책임을 지지 않습니다.<br>
												</p>
												<p>
													제 8조(회원에 대한 통보)<br> 1. 회사가 회원에 대한 통보를 하는 경우, 서비스 내부 알림
													수단과 회원의 연락처를 이용합니다.<br> 2. 회사는 다수의 회원에 대한 통보를 할 경우
													공지사항 등에 게시함으로써 개별 통보에 갈음할 수 있습니다.<br> 3. 회원이 30일 이내에
													의사 표시를 하지 않을 경우, 통보 내용에 대해 동의한 것으로 간주합니다.<br>
												</p>
												<p>
													제 9조(회사의 의무)<br> 1. 회사는 회사의 서비스 제공 및 보안과 관련된 설비를 지속적이고
													안정적인 서비스 제공에 적합하도록 유지, 점검 또는 복구 등의 조치를 성실히 이행하여야 합니다. 단,
													회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절, 정기점검 또는 운영상 필요에 의한
													목적으로 서비스 제공이 일시중단 될 수 있습니다.<br> 2. 회사는 "정보통신망법" 등 관계
													법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는
													관련법 및 회사의 개인정보취급방침이 적용됩니다. 회원의 개인정보보호에 관한 기타의 사항은 관계법과 서비스
													개인정보취급방침에 따릅니다.<br> 3. 회사는 서비스이용과 관련하여 회원으로부터 제기된 의견이나
													불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만사항에 대해서는
													전자우편 등을 통하여 전달받습니다.<br>
												</p>
												<p>
													제 10조(회원의 의무)<br> 1. 회원은 온라인ㆍ오프라인을 불문하고 다음 행위를 하여서는 안
													됩니다.<br> • 타인의 정보 도용 및 사칭<br> • 허위내용의 등록 및 회사가
													게시한 정보의 변경<br> • 불법적인 금전 거래, 사기, 기만 등 현행법에 위배되는 행위<br>
													• 다른 회원의 개인정보 및 계정정보를 수집하는 행위<br> • 회사의 사전 동의 없이 영리의
													목적으로 서비스를 이용하는 행위<br> • 외설, 음란, 폭력적이거나 기타 공서양속에 반하는 행동
													혹은 내용을 서비스에 게시하는 행위<br> • 불건전 교제 조장 혹은 매개하기 위한 목적으로
													이용하는 행위<br> • 회사 및 제3자에 대한 비방, 명예 훼손, 개인정보 침해, 기타 피해를
													주는 행위<br> • 회사 및 제3자의 저작권 등 지적재산권에 대한 침해 하는 행위<br>
													• 본인이 아닌 제3자에게 접속권한을 부여하는 등, 계정보안에 위험을 초래하는 행위<br> •
													홍보를 목적으로 동아리 개설을 반복하며 서비스 운영에 지장을 주는 행위<br> • 서비스 가입과
													탈퇴를 의도적으로 반복하며 서비스를 악의적으로 이용하거나 운영에 지장을 주는 행위<br> • 자동
													접속 프로그램 등을 사용하는 등 정상적인 용법과 다른 방법으로 서비스를 이용하여 회사의 서버에 부하를
													일으켜 회사의 정상적인 서비스를 방해하는 행위<br> • 기타 본 항에 준하는 경우나 회사가
													판단하기에 운영수칙에 위배되거나 서비스에 위협이 되는 행위<br> · 도배 및 스팸성 게시물을
													작성하는 행위<br> 2. 회원은 관계법, 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한
													주의사항, 운영수칙을 준수하여야 하며 이를 위반한 회원의 경우 회사는 임의로 회원과의 이용계약을 해지하거나
													서비스 이용을 제한할 수 있습니다.<br> 3. 회원은 본 약관을 위배한 회원이나 동아리를 회사
													측에 신고할 수 있으며 민형사상급의 처벌 문제를 제외한 본 약관 위배에 대한 서비스 이용 제한 여부와
													방법은 회사가 판단합니다.<br> 4. 회사는 신고 내용에 대한 증거자료를 회원에게 요청할 수
													있으며 만약 허위 신고로 판명될 경우, 신고한 회원은 서비스 이용에 제한이 있을 수 있습니다.<br>
													5. 회원 간의 투명하고 원활한 상호교류를 위하여 가입과 방문을 포함한 기타 동아리 활동 내역이 공개될 수
													있습니다.<br> 6. 회원은 동아리에 가입한 순간부터 멤버로 활동이 가능하며 동아리 회장 및
													운영진이 자체적으로 정한 운영방침에 대한 판단과 책임은 가입한 회원 당사자에게 있습니다.<br>
													7. 회원은 동아리의 멤버가 된 후 회사가 판단한 일정기간 이상 동아리를 방문하지 않은 회원은 동아리 활동
													의사가 없는 것으로 간주, 동아리의 활성화를 위해 해당 동아리에서 자동 탈퇴 될 수 있습니다.<br>
												</p>
												<p>
													제 11조 (동아리의 의무)<br> 1. 동아리는 모든 회원이 무료로 개설할 수 있으며 다음에
													해당하는 동아리은 개설하여서는 안됩니다.<br> • 사회의 안녕과 질서, 미풍양속을 저해하는
													동아리<br> • 사기, 기만 등 현행법에 위배되는 행위<br> • 불법 거래, 법률
													위반 거래 용도의 동아리<br> • 특정 사업이나 단체, 개인의 이익과 관련된 영업 목적의 동아리<br>
													• 외설, 폭력적이거나 기타 공서양속에 반하는 내용의 동아리<br> • 불건전 교제 조장 혹은
													매개하기 위한 목적으로 이용되는 동아리<br> • 회사 및 제3자에 대한 비방, 명예 훼손,
													개인정보 침해 등 기타 피해를 야기하는 동아리<br> • 기타 본 항에 준하는 경우나 회사가
													판단하기에 운영수칙에 위배되거나 서비스에 위협이 되는 행위<br> 2. 동아리은 이 약관의 규정,
													이용안내 및 서비스와 관련하여 공지한 주의사항, 운영수칙을 준수하여야 하며 이를 위반한 경우 회사는 임의로
													동아리를 삭제 및 운영을 제한할 수 있습니다.<br> 3. 동아리 회장과 운영진은 어떠한 경우에도
													회원의 사전 동의없이 개인의 신상정보를 타인에게 제공하거나 공개할 수 없으며, 이를 위반하여 동아리에
													발생하는 문제의 책임은 동아리 회장과 운영진에게 있습니다.<br> 4. 동아리 회장과 운영진은
													특정 회원이 동아리의 분위기를 저해하는 등, 동아리 활동에 부적합하다고 판단한 경우 해당 회원 강퇴 및
													재가입 차단의 조치를 취할 수 있으며 이로 인한 일체의 책임을 부담합니다.<br> 5. 동아리
													회장과 운영진은 동아리 관리의 의무가 있고 자체적으로 공지를 통해 운영방침을 정할 수 있으나 회사가
													판단하기에 전체 동아리 운영수칙에 위배되거나 불합리한 경우는 해당 동아리은 경고 혹은 제재를 받을 수
													있습니다.<br> 6. 동아리 내 온라인, 오프라인을 불문하고 회원간 금전 거래가 발생할 경우
													이로 인한 일체의 책임은 당사자들에게 있으며 동아리 회장은 관리의 책임이 있습니다.<br> 7.
													동아리 회장과 운영진은 본 약관 또는 회사의 운영수칙에서 금지한 게시물에 대하여 모니터링을 하여야 하며,
													위배되는 게시물을 발견하거나 신고를 받으면 해당 게시물을 즉시 삭제하고 이를 등록한 회원의 동아리 활동을
													제한할 수 있습니다.<br> 8. 동아리 내 회원이 동아리 활동 중 온라인ㆍ오프라인을 불문하고 본
													약관 또는 운영수칙에 위배되는 행위를 한 경우 당사자에게 책임이 있으며 동아리 회장은 관리의 책임이
													있습니다. 회사의 경고에도 불구하고 별도의 조치가 없는 경우, 회사는 동아리 회장 및 회원을 탈퇴시키거나
													이용을 제한할 수 있습니다.<br> 9. 동아리 회장과 운영진은 무분별한 강퇴나 부당한 권력행사로
													위 권한을 남용할 수 없고 회사 측에 악용과 관련된 신고가 접수될 시 동아리 활동이 제한되거나 제재 조치가
													취해질 수 있습니다.<br> 10. 동아리 회장과 운영진은 운영진을 임명할 수 있고 그에 대한
													모든 책임이 있으며 임명 받은 운영진이 직책 거부 의사를 밝히지 않을 경우, 임명 동의한 것으로
													간주합니다.<br> 11. 동아리 회장은 멤버들이 가입한 상태에서 동아리 삭제가 불가능하며 동아리
													회장 양도를 통해 동아리를 양도할 수 있습니다.<br> 12. 동아리 양도가 이루어지면 원칙적으로
													양도 취하가 불가하나 새 동아리 회장이 동아리 운영에 피해를 야기하면 회사 측 판단으로 전 동아리 회장의
													요청에 한하여 다시 동아리 회장의 권한을 이양할 수 있습니다.<br> 13. 동아리 회장이
													동아리를 탈퇴할 경우, 운영진 중 한 명이 운영진이 없다면 멤버 중 한 명이 동아리 회장으로 자동
													임명됩니다.<br> 14. 운영수칙에 위배되는 행위로 이용이 정지된 동아리 회장 및 일정기간
													방문하지 않는 동아리 회장은 운영 의지가 없는 것으로 간주하고 원활한 서비스를 위해 회사가 동아리 회장
													권한을 직접 양도할 수 있습니다.<br> 15. 동아리의 정보와 게시물은 동아리 노출 극대화를
													위하여 검색 또는 다른 어플리케이션(서비스)를 통해 공개될 수 있습니다.<br> 16. 회사는
													회사가 제공하는 서비스안에서 동아리 회장이 회원들을 모집한 후 타 서비스로 단체 이동하는 것을 허용하지
													않습니다.<br> 17. 회사는 원활한 동아리 운영을 지원하기 위해 별도의 동아리 운영수칙을 정할
													수 있으며 동아리는 그에 따른 사항을 준수하여야 합니다.<br>
												</p>
												<p>
													제 12조(게시물의 관리 및 게시 중단)<br> 1. 서비스에 등록된 모든 게시물을 모니터링 될
													수 있으며 이 약관의 규정, 운영수칙에 위배되는 경우 관련법에 따라 회사는 게시물을 임의로 삭제할 수
													있습니다.<br> 2. 회원이 이용계약을 해지하거나 회사에 의해 이용계약이 해지되는 경우 본인
													계정에 기록된 게시물은 임의로 삭제될 수도 있습니다. 다만, 공유되거나 다른 회원에 의한 스크랩 등으로
													다시 게시된 게시물 및 댓글 등 공용 서비스 내에 게시된 게시물은 다른 회원의 정상적인 서비스 이용을 위해
													삭제되지 않습니다.<br> 3. 회원이 동아리를 탈퇴하거나 동아리에서 강퇴된 경우, 해당 동아리에
													회원이 등록한 모든 게시물은 삭제되거나 수정되지 않으며 이로 발생한 피해에 대해서 회사는 책임지지
													않습니다.<br> 4. 모든 게시물은 등록한 회원 및 동아리 회장과 운영진에게 관리의 책임이
													있으며, 회사는 이에 대한 백업이나 권리를 보장하지 않습니다.<br> 5. 회사는 서비스의
													운영정책상 또는 회사가 운영하는 어플리케이션(또는 사이트)간 통합, 개별서비스를 회사가 운영하는 다른
													어플리케이션(또는 사이트)으로 이전 등을 하는 경우 게시물의 내용을 변경하지 아니하고 게시물의 게재위치를
													변경/이전하거나 어플리케이션(또는 사이트)간 공유로 하여 서비스할 수 있습니다.<br> 6.
													회사는 동아리 정보를 포함한 동아리 내 모든 게시물 동아리 노출 극대화와 서비스 운영 향상을 위해 인터넷
													검색 및 다른 어플리케이션(또는 사이트)를 통해 공개할 수 있습니다.<br> 7. 회사는 관련법에
													의거하여 회원의 게시물로 인한 법률상 이익 침해를 근거로, 다른 이용자 또는 제3자가 회원 또는 회사를
													대상으로 하여 민형사상의 법적 조치를 취하거나 관련된 게시물의 게시중단을 요청하는 경우, 회사는 해당
													게시물에 대한 접근을 잠정적으로 제한하거나 삭제할 수 있습니다.<br>
												</p>
												<p>
													제 13조(게시물의 저작권)<br> 1. 회원이 서비스 내에 게시한 게시물의 저작권은 해당
													게시물의 저작자에게 귀속됩니다.<br> 2. 회원이 서비스 내에 게시한 게시물은 검색결과에 노출
													될 수 있으며 회원은 서비스 내 관리기능을 통해 해당 게시물을 삭제할 수 있습니다.<br> 3.
													회사는 동아리 내 모든 게시물을 저장, 보관할 수 있고, 회원의 법령, 운영수칙에 위반되는 사실이 확인되는
													경우, 회원 간의 분쟁 조정, 민원처리, 또는 동아리 질서 유지를 위해서 열람할 수 있으며 법령에서 정한
													경우 외에는 제 3자에게 제공하지 않습니다.<br> 4. 회사는 전항에 따라 게시물을 열람하는
													경우 관련 내용과 관계되는 회원에게 고지합니다.<br> 5. 회원의 게시물이 "정보통신망법" 및
													"저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당
													"게시물"의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취합니다.<br>
													6. 본 조에 따른 세부절차는 "정보통신망법" 및 "저작권법"이 규정한 범위 내에서 회사가 정한
													게시중단요청서비스에 따르며 게시 중단 요청 서비스은 https://mycampus.kr으로 요청하시면
													됩니다.<br>
												</p>
												<p>
													제 14조(광고의 게재 및 발신)<br> 1. 회사는 서비스의 제공을 위해 서비스 내부에 광고를
													게재할 수 있습니다.<br> 2. 회사는 이용자의 이용 기록을 활용한 광고를 게재할 수 있습니다.<br>
													3. 회사는 회원이 광고성 정보 수신에 동의할 경우, 서비스 내부 알림 수단과 회원의 연락처를 이용하여
													광고성 정보를 발신할 수 있습니다.<br> 4. 회사는 광고 게재 및 동의 된 광고성 정보의
													발신으로 인해 발생한 피해에 대해 어떠한 책임을 지지 않습니다.<br>
												</p>
												<p>
													제 15조(재판권 및 준거법)<br> 1. 회사와 이용자 간에 발생한 분쟁에 관한 소송은
													민사소송법 상의 법원을 관할법원으로 합니다.<br> 2. 회사와 이용자 간에 제기된 소송에는
													한국법을 적용합니다.<br>
												</p>
												<p>
													제 16조(기타)<br> 1. 이 약관은 2020년 1월 1일에 최신화 되었습니다.<br>
													2. 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관련법 또는 관례에 따릅니다.<br>
													3. 이 약관에도 불구하고 다른 약관이나 서비스 이용 중 안내 문구 등으로 달리 정함이 있는 경우에는 해당
													내용을 우선으로 합니다.<br>
												</p>
											</div>

										</div>
										<!--2번 약관-->
										<div class="Question_2"
											style="display: flex; justify-content: space-between; width: 100%; margin-bottom: 35px;">
											<div onclick="chk_term(this, '2')"
												style="width: 90%; font-weight: 400; font-size: 14px; line-height: 17px; letter-spacing: -0.02em;">
												<i class="fa fa-check terms chk_2" aria-hidden="true"
													style="color: rgb(204, 204, 204); padding-bottom: 0px; margin-right: 15px;"></i>
												개인정보 수집 및 이용 동의 (필수)
											</div>
											<div onclick="show_term(this, '2')"
												style="width: 10%; text-align: center; color: #999999; font-size: 13px; line-height: 16px; letter-spacing: -0.02em; text-decoration-line: underline;">보기</div>
										</div>
										<div class="Answer_2" style="display: none;">
											<div class="signup_terms mb-2">
												<p>
													제1조 개인정보 수집 및 이용 동의 <br> ① 개인정보 수집 목적<br> 회원님의
													정보는 원활한 서비스 이용과 권한 별 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정이용 방지와
													비인가 사용 방지, 가입의사 확인, 가입 및 가입횟수 제한, 만 14세 미만 아동 개인 정보 수집 시
													법정대리인 동의여부 확인, 고지사항 전달의 목적, 서비스 이용 시의 장애 등에 대한 불만처리 등 민원처리,
													새로운 기능의 추가•서비스 개선•각종 이벤트 당첨 시 선물 우송, 유용한 정보의 제공에 이용됩니다. 또한
													신규 서비스 개발 및 특화와 같은 더 나은 서비스를 만들기 위한 통계자료로 이용되거나 연령, 지역, 성별
													등 인구통계학적 특성에 따른 서비스 제공, 회원의 서비스 이용에 대한 통계, 이벤트 등 광고성 정보 전달에
													활용될 수 있습니다. 수집된 정보는 해당 서비스의 제고이나 그 외에 사전에 밝힌 목적 이외의 다른 어떠한
													목적으로도 사용되거나 여타 개인이나 단체에 제공되지 않습니다.<br>
												</p>
												<p>
													② 수집하는 개인정보 항목<br> 처음 회원가입을 하실 때 서비스 제공을 위한 필수적인 정보
													사항을 받고 있습니다. 회원가입 시의 필수 사항은 회원가입 요청자의 아이디, 비밀번호, 이름, 연락처,
													학교, 학과, 학번, 학생증입니다.<br>
												</p>
												<p>
													이외에 단체예약 시, 단체정보(단체명, 담당자명, 연락처, 이메일, 참여자 이름, 생년, 성별 등)를
													입력할 수 있습니다. 또한 개인정보보호법(2011.9.30)에 따라 만 14세미만 어린이(또는 학생)는
													보호자(법적대리인)의 동의가 필요하며, 보호자 동의 절차를 거쳐서 가입이 됩니다. 이때 보호자 휴대폰
													인증을 통해 진행하며, 연락처는 인증 외 별도 저장되지 않습니다. 또한 마이캠퍼스 이용기간 중 수집된
													신체활동정보(Zone 및 기종 이용현황, 기록정보 등)를 이용결과제공을 위해 활용할 수 있습니다. 온라인
													서비스 이용과정에서 서비스 이용기록, 접속로그, 쿠키, 접속IP 정보, 결제기록, 불량이용기록 등이
													수집되거나, 설문조사, 이벤트 시에 집단적인 통계분석을 위해서나 경품 발송을 위한 목적으로도 개인정보
													기재를 요청할 수 있습니다. 이때에도 수집된 정보는 해당 서비스 제공이나 회원님께 사전에 밝힌 목적 이외의
													다른 어떠한 목적으로도 사용되지 않습니다. 입력하신 소중한 개인정보는 회원님의 명백한 동의 없이 공개 또는
													제3자에게 제공되지 않으며, 회원약관 및 개인정보취급방침에 따라 보호됩니다.<br>
												</p>
												<p>
													③ 개인정보의 보유 및 이용기간<br> 회원님이 회원으로서 회사에서 제공하는 서비스를 받는 동안
													회원님의 개인정보는 회사에서 계속 보유하며 서비스 제공을 위해 이용하게 됩니다. 다만 회원이 회사에서
													지정한 절차에 따라 탈퇴한 경우와 회원님께 사전에 알려드린 개인정보를 제공받은 목적이 달성된 경우에 수집된
													개인의 정보는 완전히 삭제되며 어떠한 용도로도 열람 또는 이용할 수 없도록 처리됩니다. 회사는 탈퇴 후
													동일 아이디 재가입 불가 및 불량 회원의 부정한 이용의 재발 방지 등을 위해, 아이디 정보를 보유할 수
													있습니다. 그리고 관계 법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한
													일정한 기간 동안 회원 정보를 보관합니다.<br>
												</p>
												<p>
													표시/ 광고에 관한 기록: 6개월(전자상거래 등에서의 소비자보호에 관한 법률)<br> 계약 또는
													청약철회 등에 관한 기록: 5년(전자상거래 등에서의 소비자보호에 관한 법률)<br> 대금결제 및
													재화 등의 공급에 관한 기록: 5년(전자상거래 등에서의 소비자보호에 관한 법률)<br> 소비자의
													불만 또는 분쟁처리에 관한 기록: 3년(전자상거래 등에서의 소비자보호에 관한 법률)<br>
													신용정보의 수집/처리 및 이용 등에 관한 기록: 3년(신용정보의 이용 및 보호에 관한 법률)<br>
													통신비밀보호법에 다른 통신사실확인자료 3개월 개인정보의 열람 및 수정에 대해서 회원은 언제든지 자신의
													개인정보에 대한 열람 및 수정을 요청할 수 있습니다.<br>
												</p>
												<p>
													④ 개인정보취급방침 변경<br> 이 개인정보처리방침은 2020년 01월 17일부터 적용되며, 법령
													및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 별도 고지할 것입니다.<br>
												</p>
											</div>
										</div>
										<!--3번 약관-->
										<div class="Question_3"
											style="display: flex; justify-content: space-between; width: 100%; margin-bottom: 35px;">
											<div onclick="chk_term(this, '3')"
												style="width: 90%; font-weight: 400; font-size: 14px; line-height: 17px; letter-spacing: -0.02em;">
												<i class="fa fa-check terms chk_3" aria-hidden="true"
													style="color: rgb(204, 204, 204); padding-bottom: 0px; margin-right: 15px;"></i>
												개인정보 제3자 제공 동의 (필수)
											</div>
											<div onclick="show_term(this, '3')"
												style="width: 10%; text-align: center; color: #999999; font-size: 13px; line-height: 16px; letter-spacing: -0.02em; text-decoration-line: underline;">보기</div>
										</div>
										<div class="Answer_3" style="display: none;">
											<div class="signup_terms mb-2">
												<p>
													제2조 개인정보 제3자 제공 <br> ① ㈜게더링은 이용자의 개인정보를 원칙적으로 외부에 제공하지
													않습니다. 다만, 아래의 경우에는 예외로 합니다. - 이용자들이 사전에 동의한 경우 - 법령의 규정에
													의거하거나, 수사목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구 및 법원의 사실조회 등의 요구가
													있는 경우 ② 개인정보 제3자 제공내역 및 목적 - 제공정보 : 이름, 연락처, 학교, 학과, 학번,
													동아리 별 추가 질문, QR 출석 등 - 제공목적 : 본인 확인, QR 출석 확인 - 제공대상 : 가입
													또는 QR 출석하려는 총동아리연합회, 중앙동아리, 단과대 동아리, 소모임
												</p>
											</div>

										</div>
										<!--4번 약관-->
										<div class="Question_4"
											style="display: flex; justify-content: space-between; width: 100%; margin-bottom: 35px;">
											<div onclick="chk_term(this, '4')"
												style="width: 90%; font-weight: 400; font-size: 14px; line-height: 17px; letter-spacing: -0.02em;">
												<i class="fa fa-check terms chk_4" aria-hidden="true"
													style="color: rgb(204, 204, 204); padding-bottom: 0px; margin-right: 15px;"></i>
												마케팅정보 메일, SMS 수신 동의 (선택)
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="submit_btn" style="display: flex;">
							<div class="footer_btn 1_a_btn btn_title none" id="nextButton">다음</div>
						</div>
					</div>
				</div>




				<!-- MBTI 선택 페이지 -->
				<div class="swiper-slide">
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div
							style="font-weight: 700; font-size: 24px; line-height: 34px; padding: 105px 20px 0px 20px;">
							<span style="font-weight: 400;">MBTI를<br> 선택해 주세요!
							</span>

						</div>
						<div class="signup_input" style="padding: 0;">
							<input type="hidden" name="mbti" id="mbti" value="121">
							<div class="university_list2"
								style="display: flex; flex-direction: row; flex-wrap: wrap; height: 300px; WIDTH: 81%; ALIGN-ITEMS: CENTER; MARGIN: 0 AUTO;">

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ISTJ')">ISTJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ISTP')">ISTP</div>
								</div>


								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'INFJ')">INFJ</div>
								</div>


								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'INTJ')">INTJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ISFJ')">ISFJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ISFP')">ISFP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'INFP')">INFP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'INTP')">INTP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ESTJ')">ESTJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ESTP')">ESTP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ENFJ')">ENFJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ENTJ')">ENTJ</div>
								</div>


								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ESFJ')">ESFJ</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ESFP')">ESFP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ENFP')">ENFP</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_mbti(this, 'ENTP')">ENTP</div>
								</div>


							</div>
						</div>
						<!-- <i><input type="button" name="choice" value="모르겠어요" class="custom-block-icon mbti"></i> -->
						<div class="submit_btn" style="display: flex;">
							<div class="footer_btn 1_a_btn btn_title none" id="prevButton"
								style="background: #EBEBEB; color: #222222; width: 30%;">이전</div>
							<div class="footer_btn 2_b_btn btn_title w-70 none"
								id="nextButton" style="width: 70%;">다음</div>
						</div>
					</div>
				</div>




				<!-- 학교 선택 페이지 -->
				<div class="swiper-slide">
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div
							style="font-weight: 700; font-size: 24px; line-height: 34px; padding: 78px 20px 12px 20px;">
						<img alt="" src="./resources/images/icons/i_school.png" style="width: 10%">&nbsp;
							<span style="font-weight: 400;">학교를 선택해 주세요!
							</span>
						</div>
						<div class="input-style input-style-1 input-required">
							<div
								style="display: flex; flex-direction: column; justify-content: space-between; width: 100%; margin: 10px 0;">
								<div class="signup_input unversity_list"
									style="width: 90%; margin: 0 auto;">
									<div class="signup_input" style="padding: 0;">
										<input type="hidden" name="univ" id="university" value="121">
										<input type="hidden" name="region" id="region" value="4">
										<div class="university_list2"
											style="display: flex; flex-direction: row; flex-wrap: wrap; height: 300px;">




											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '23', '2')">
													ICT폴리텍대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '121', '4')">
													가야대학교(고령)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '96', '3')">
													가야대학교(김해)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '24', '2')">가천대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '1', '1')">
													가톨릭관동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '25', '2')">
													가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '240', '9')">
													가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '122', '4')">
													가톨릭상지대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '241', '9')">
													감리교신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '26', '2')">강남대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '404', '17')">
													강동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '2', '1')">
													강릉영동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '3', '1')">
													강릉원주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '4', '1')">
													강원관광대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '5', '1')">강원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '6', '1')">
													강원도립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '97', '3')">거제대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '242', '9')">
													건국대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '405', '17')">
													건국대학교(글로컬)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '192', '7')">
													건양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '376', '16')">
													건양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '193', '7')">
													건양사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '27', '2')">
													경기과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '28', '2')">경기대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '243', '9')">
													경기대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '98', '3')">
													경남과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '99', '3')">경남대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '100', '3')">
													경남도립거창대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '101', '3')">
													경남도립남해대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '211', '8')">
													경남정보대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '7', '1')">경동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '29', '2')">경동대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '30', '2')">경민대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '31', '2')">경복대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '123', '4')">
													경북과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '178', '6')">
													경북대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '124', '4')">
													경북도립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '125', '4')">
													경북보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '126', '4')">
													경북전문대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '102', '3')">
													경상대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '212', '8')">
													경성대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '127', '4')">
													경운대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '32', '2')">
													경인교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '317', '12')">
													경인교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '318', '12')">
													경인여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '128', '4')">
													경일대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '129', '4')">
													경주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '244', '9')">
													경희대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '245', '9')">
													경희사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '179', '6')">
													계명대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '180', '6')">
													계명문화대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '33', '2')">
													계원예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '327', '13')">
													고구려대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '246', '9')">
													고려대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '308', '10')">
													고려대학교(세종)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '247', '9')">
													고려사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '213', '8')">
													고신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '377', '16')">
													공주교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '378', '16')">
													공주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '160', '5')">
													광신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '328', '13')">
													광양보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '248', '9')">
													광운대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '329', '13')">
													광주가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '161', '5')">
													광주과학기술원</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '162', '5')">
													광주교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '163', '5')">
													광주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '164', '5')">
													광주보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '165', '5')">
													광주여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '130', '4')">
													구미대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '249', '9')">
													국민대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '34', '2')">국제대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '35', '2')">
													국제사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '349', '14')">
													군산간호대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '350', '14')">
													군산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '351', '14')">
													군장대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '406', '17')">
													극동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '379', '16')">
													글로벌사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '380', '16')">
													금강대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '131', '4')">
													금오공과대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '166', '5')">
													기독간호대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '132', '4')">김천대학
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '133', '4')">
													김천대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '36', '2')">김포대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '103', '3')">
													김해대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '407', '17')">
													꽃동네대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '381', '16')">
													나사렛대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '167', '5')">
													남부대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '382', '16')">
													남서울대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '383', '16')">
													남서울대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '37', '2')">농협대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '38', '2')">단국대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '384', '16')">
													단국대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '134', '4')">
													대경대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '135', '4')">
													대구가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '181', '6')">
													대구경북과학기술원</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '182', '6')">
													대구공업대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '183', '6')">
													대구과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '184', '6')">
													대구교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '136', '4')">
													대구대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '185', '6')">
													대구보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '137', '4')">
													대구사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '138', '4')">
													대구예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '139', '4')">
													대구한의대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '194', '7')">
													대덕대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '214', '8')">
													대동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '39', '2')">대림대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '140', '4')">
													대신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '408', '17')">
													대원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '309', '10')">
													대전가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '195', '7')">
													대전과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '196', '7')">
													대전대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '197', '7')">
													대전보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '198', '7')">
													대전신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '40', '2')">대진대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '250', '9')">
													덕성여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '168', '5')">
													동강대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '251', '9')">
													동국대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '141', '4')">
													동국대학교(경주)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '41', '2')">
													동남보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '252', '9')">
													동덕여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '215', '8')">
													동명대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '216', '8')">
													동부산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '217', '8')">
													동서대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '42', '2')">
													동서울대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '330', '13')">
													동신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '218', '8')">
													동아대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '43', '2')">
													동아방송예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '331', '13')">
													동아보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '142', '4')">
													동양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '253', '9')">
													동양미래대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '8', '1')">동우대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '104', '3')">
													동원과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '44', '2')">동원대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '219', '8')">
													동의과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '220', '8')">
													동의대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '221', '8')">
													동주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '45', '2')">
													두원공과대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '254', '9')">
													디지털서울문화예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '46', '2')">루터대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '105', '3')">
													마산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '47', '2')">명지대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '255', '9')">
													명지대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '256', '9')">
													명지전문대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '199', '7')">
													목원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '332', '13')">
													목포가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '333', '13')">
													목포과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '334', '13')">
													목포대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '335', '13')">
													목포해양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '143', '4')">
													문경대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '200', '7')">
													배재대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '257', '9')">
													배화여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '385', '16')">
													백석대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '386', '16')">
													백석문화대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '352', '14')">
													백제예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '222', '8')">
													부경대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '223', '8')">
													부산가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '224', '8')">
													부산경상대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '225', '8')">
													부산과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '226', '8')">
													부산교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '227', '8')">
													부산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '228', '8')">
													부산디지털대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '229', '8')">
													부산여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '230', '8')">
													부산예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '231', '8')">
													부산외국어대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '106', '3')">
													부산장신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '48', '2')">부천대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '258', '9')">
													사이버한국외국어대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '259', '9')">
													삼육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '260', '9')">
													삼육보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '261', '9')">
													상명대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '387', '16')">
													상명대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '9', '1')">상지대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '10', '1')">
													상지영서대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '262', '9')">
													서강대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '263', '9')">
													서경대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '144', '4')">
													서라벌대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '169', '5')">
													서영대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '264', '9')">
													서울과학기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '265', '9')">
													서울과학기술대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '266', '9')">
													서울교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '267', '9')">
													서울기독대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '268', '9')">
													서울대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '269', '9')">
													서울디지털대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '270', '9')">
													서울사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '271', '9')">
													서울시립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '49', '2')">
													서울신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '272', '9')">
													서울여자간호대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '273', '9')">
													서울여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '50', '2')">
													서울예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '51', '2')">
													서울장신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '274', '9')">
													서울한영대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '409', '17')">
													서원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '275', '9')">
													서일대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '52', '2')">서정대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '353', '14')">
													서해대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '145', '4')">
													선린대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '388', '16')">
													선문대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '53', '2')">성결대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '276', '9')">
													성공회대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '277', '9')">
													성균관대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '278', '9')">
													성신여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '232', '8')">
													성심외국어대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '146', '4')">
													성운대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '11', '1')">세경대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '410', '17')">
													세명대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '279', '9')">
													세종대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '280', '9')">
													세종사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '336', '13')">
													세한대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '12', '1')">송곡대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '170', '5')">
													송원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '13', '1')">송호대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '186', '6')">
													수성대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '54', '2')">
													수원가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '55', '2')">
													수원과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '56', '2')">수원대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '57', '2')">
													수원여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '281', '9')">
													숙명여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '411', '17')">
													순복음총회신학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '337', '13')">
													순천대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '338', '13')">
													순천제일대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '389', '16')">
													순천향대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '282', '9')">
													숭실대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '283', '9')">
													숭실사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '284', '9')">
													숭의여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '58', '2')">신경대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '59', '2')">신구대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '233', '8')">
													신라대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '390', '16')">
													신성대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '60', '2')">
													신안산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '61', '2')">신한대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '62', '2')">신흥대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '63', '2')">
													아세아연합신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '64', '2')">아주대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '391', '16')">
													아주자동차대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '147', '4')">
													안동과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '148', '4')">
													안동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '65', '2')">안산대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '66', '2')">안양대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '319', '12')">
													안양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '67', '2')">여주대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '68', '2')">연성대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '285', '9')">
													연세대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '14', '1')">
													연세대학교(미래)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '107', '3')">
													연암공과대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '392', '16')">
													연암대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '149', '4')">
													영남대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '150', '4')">
													영남신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '151', '4')">
													영남외국어대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '187', '6')">
													영남이공대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '108', '3')">
													영산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '234', '8')">
													영산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '109', '3')">
													영산대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '235', '8')">
													영산대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '339', '13')">
													영산선학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '188', '6')">
													영진사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '189', '6')">
													영진전문대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '354', '14')">
													예수대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '69', '2')">
													예원예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '355', '14')">
													예원예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '70', '2')">오산대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '71', '2')">용인대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '72', '2')">
													용인송담대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '356', '14')">
													우석대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '201', '7')">
													우송대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '202', '7')">
													우송정보대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '312', '11')">
													울산과학기술원</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '313', '11')">
													울산과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '314', '11')">
													울산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '73', '2')">
													웅지세무대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '357', '14')">
													원광대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '358', '14')">
													원광디지털대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '359', '14')">
													원광보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '152', '4')">
													위덕대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '412', '17')">
													유원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '74', '2')">유한대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '75', '2')">을지대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '203', '7')">
													을지대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '286', '9')">
													이화여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '287', '9')">
													인덕대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '110', '3')">
													인제대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '236', '8')">
													인제대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '320', '12')">
													인천가톨릭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '321', '12')">
													인천대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '322', '12')">
													인천재능대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '323', '12')">
													인하공업전문대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '324', '12')">
													인하대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '288', '9')">
													장로회신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '76', '2')">장안대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '289', '9')">
													적십자간호대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '340', '13')">
													전남과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '171', '5')">
													전남대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '341', '13')">
													전남대학교(여수캠퍼스)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '342', '13')">
													전남도립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '360', '14')">
													전북과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '361', '14')">
													전북대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '362', '14')">
													전주교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '363', '14')">
													전주기전대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '364', '14')">
													전주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '365', '14')">
													전주비전대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '290', '9')">정석대학
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '371', '15')">
													제주관광대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '372', '15')">
													제주국제대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '373', '15')">
													제주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '374', '15')">
													제주한라대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '172', '5')">
													조선간호대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '173', '5')">
													조선대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '174', '5')">
													조선이공대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '393', '16')">
													중부대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '77', '2')">중앙대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '291', '9')">
													중앙대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '78', '2')">
													중앙승가대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '413', '17')">
													중원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '111', '3')">
													진주교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '112', '3')">
													진주보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '113', '3')">
													진주산업대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '79', '2')">
													차의과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '114', '3')">
													창신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '115', '3')">
													창원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '116', '3')">
													창원문성대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '80', '2')">
													청강문화산업대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '343', '13')">
													청암대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '394', '16')">
													청운대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '414', '17')">
													청주교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '415', '17')">
													청주대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '344', '13')">
													초당대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '292', '9')">
													총신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '293', '9')">
													추계예술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '15', '1')">
													춘천교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '315', '11')">
													춘해보건대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '204', '7')">
													충남대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '395', '16')">
													충남도립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '416', '17')">
													충북대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '417', '17')">
													충북도립대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '418', '17')">
													충북보건과학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '419', '17')">
													충청대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '205', '7')">
													침례신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '81', '2')">칼빈대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '294', '9')">
													케이씨대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '82', '2')">평택대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '153', '4')">
													포항공과대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '154', '4')">
													포항대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '83', '2')">한경대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '16', '1')">
													한국골프대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '206', '7')">
													한국과학기술원</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '84', '2')">
													한국관광대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '420', '17')">
													한국교원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '421', '17')">
													한국교통대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '117', '3')">
													한국국제대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '396', '16')">
													한국기술교육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '366', '14')">
													한국농수산대학(일반)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '295', '9')">
													한국방송통신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '85', '2')">
													한국복지대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '155', '4')">
													한국복지사이버대학</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '86', '2')">
													한국산업기술대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '87', '2')">
													한국산업기술대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '296', '9')">
													한국성서대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '118', '3')">
													한국승강기대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '297', '9')">
													한국열린사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '310', '10')">
													한국영상대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '298', '9')">
													한국예술종합학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '299', '9')">
													한국외국어대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '423', '2')">
													한국외국어대학교 글로벌캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '397', '16')">
													한국전통문화대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '300', '9')">
													한국체육대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '301', '9')">
													한국폴리텍 I 대학 서울강서캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '302', '9')">
													한국폴리텍 I 대학 서울정수캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '88', '2')">한국폴리텍
													I 대학 성남캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '375', '15')">
													한국폴리텍 I 대학 제주캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '325', '12')">
													한국폴리텍 II 대학 남인천캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '326', '12')">
													한국폴리텍 II 대학 인천캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '17', '1')">한국폴리텍
													III 대학 강릉캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '18', '1')">한국폴리텍
													III 대학 원주캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '19', '1')">한국폴리텍
													III 대학 춘천캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '207', '7')">
													한국폴리텍 IV 대학 대전캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '398', '16')">
													한국폴리텍 IV 대학 아산캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '422', '17')">
													한국폴리텍 IV 대학 청주캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '399', '16')">
													한국폴리텍 IV 대학 홍성캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '175', '5')">
													한국폴리텍 V 대학 광주캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '367', '14')">
													한국폴리텍 V 대학 김제캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '345', '13')">
													한국폴리텍 V 대학 목포캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '346', '13')">
													한국폴리텍 V 대학 순천캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '368', '14')">
													한국폴리텍 V 대학 익산캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '156', '4')">
													한국폴리텍 VI 대학 구미캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '190', '6')">
													한국폴리텍 VI 대학 대구캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '191', '6')">
													한국폴리텍 VI 대학 영남융합기술캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '157', '4')">
													한국폴리텍 VI 대학 영주캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '237', '8')">
													한국폴리텍 VII 대학 부산캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '316', '11')">
													한국폴리텍 VII 대학 울산캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '119', '3')">
													한국폴리텍 VII 대학 창원캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '400', '16')">
													한국폴리텍 특성화대학 바이오캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '89', '2')">한국폴리텍
													특성화대학 반도체융합캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '120', '3')">
													한국폴리텍 특성화대학 항공캠퍼스</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '90', '2')">
													한국항공대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '238', '8')">
													한국해양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '208', '7')">
													한남대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '158', '4')">
													한동대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '20', '1')">한라대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '347', '13')">
													한려대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '21', '1')">한림대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '22', '1')">
													한림성심대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '209', '7')">
													한밭대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '210', '7')">
													한밭대학교(산업대)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '91', '2')">한북대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '401', '16')">
													한서대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '303', '9')">
													한성대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '92', '2')">한세대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '93', '2')">한신대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '304', '9')">
													한양대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '94', '2')">
													한양대학교(ERICA)</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '305', '9')">
													한양사이버대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '306', '9')">
													한양여자대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '348', '13')">
													한영대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '369', '14')">
													한일장신대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '95', '2')">협성대학교
												</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '402', '16')">
													혜전대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '176', '5')">
													호남대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '177', '5')">
													호남신학대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '159', '4')">
													호산대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '403', '16')">
													호서대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '370', '14')">
													호원대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '307', '9')">
													홍익대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '311', '10')">
													홍익대학교</div>
											</div>



											<div class="univ_list_set" style="display: contents;">
												<div class="univ_list un_btn2"
													onclick="selected_university(this, '239', '8')">
													화신사이버대학교</div>
											</div>


										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="submit_btn" style="display: flex;">
							<div class="footer_btn 1_a_btn btn_title none" id="prevButton"
								style="background: #EBEBEB; color: #222222; width: 30%;">이전</div>
							<div class="footer_btn 2_b_btn btn_title w-70 none"
								id="nextButton" style="width: 70%;">다음</div>
						</div>
					</div>
				</div>


				<!-- 성향 선택 페이지 -->
				<div class="swiper-slide">
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase">
						<div
							style="font-weight: 700; font-size: 24px; line-height: 34px; padding: 145px 20px 0px 20px;">
							<img alt="" src="./resources/images/icons/i_tendency.png" style="width: 10%">&nbsp;<span style="font-weight: 400;">관심있는 분야를 골라주세요! </span>

						</div>
						<div class="signup_input" style="padding: 0;">
							<input type="hidden" name="preference" id="preference"
								value="121">
							<div class="university_list2"
								style="display: flex; flex-direction: row; flex-wrap: wrap; height: 230px; WIDTH: 90%; ALIGN-ITEMS: CENTER; MARGIN: 0 AUTO;">

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '체육레저')">#체육/레저</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '문예전시')">#문예/전시</div>
								</div>


								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '공연')">#공연</div>
								</div>


								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '취미')">#취미</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '학술교양')">#학술/교양</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '봉사')">#봉사</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '종교')">#종교</div>
								</div>

								<div class="univ_list_set" style="display: contents;">
									<div class="univ_list un_btn2"
										onclick="selected_preference(this, '창업')">#창업</div>
								</div>

							</div>
						</div>
						
						<div class="submit_btn" style="display: flex;">
							<div class="footer_btn 1_a_btn btn_title none" id="prevButton"
								style="background: #EBEBEB; color: #222222; width: 30%;">이전</div>
							<div class="footer_btn 2_b_btn btn_title w-70 none"
								id="nextButton" style="width: 70%;">다음</div>
						</div>
					</div>
				</div>

				<!-- 기타 회원가입정보 페이지 -->
				<div class="swiper-slide">
					<div
						class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
						style="height: 140vh;">
						<div
							style="font-weight: 700; font-size: 24px; line-height: 34px; padding: 65px 20px 35px 20px;">
							<img alt="" src="./resources/images/icons/i_docs.png" style="width: 5%">&nbsp;<span style="font-weight: 400;">마지막 정보를 입력해 주세요!</span>
						</div>

						<div class="input-style input-style-1 input-required"
							style="width: 90%; margin: 0 auto; text-align: left;">
							<!-- <div class="help_txt" id="send_sms_btn"></div>-->

							<!-- 아이디 -->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div class="signup_input_1">아이디</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%;">
									<div class="signup_input_2" style="width: 58%;">
										<input class="input_title" type="text" id="userid" pattern="\d*"
											required="" placeholder="id 입력" name="id"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
									<div class="get_sms" onclick="check_id()"
										style="display: flex; justify-content: center; align-items: center; background: #A8DADC; width: 38%; border-radius: 5px; color: white;">
										중복확인</div>
								</div>
								<div class="help_txt" id="phone_number_help"></div>
							</div>


							<!--비밀번호-->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div id="pwlabel" class="signup_input_1">비밀번호</div>
								<div class="signup_input_2" style="margin-bottom: 5px;">
									<input class="input_title" type="password" id="password"
										name="pw" required="" placeholder="비밀번호"
										style="width: 100%; border: none;">
								</div>
								<div class="help_txt" id="password_help"></div>
								<!--비밀번호 확인-->
								<div class="signup_input_2">
									<input class="input_title" type="password" id="password_chk"
										name="password_chk" required="" placeholder="비밀번호 확인"
										style="width: 100%; border: none;" onblur="pwCheck()">
								</div>
								<div class="help_txt" id="password_chk_help"></div>
							</div>

							<!-- 이름 -->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div class="signup_input_1">이름</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%;">
									<div class="signup_input_2" style="width: 100%;">
										<input class="input_title" type="text" id="#" pattern="\d*"
											required="" placeholder="이름 입력" name="name"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
								</div>
								<div class="help_txt" id="phone_number_help"></div>
							</div>

							<!-- 닉네임 -->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div class="signup_input_1">닉네임</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%;">
									<div class="signup_input_2" style="width: 58%;">
										<input class="input_title" type="text" id="nick" pattern="\d*"
											required="" placeholder="닉네임 입력" name="nick"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
									<div class="get_sms" onclick="check_nick()"
										style="display: flex; justify-content: center; align-items: center; background: #A8DADC; width: 38%; border-radius: 5px; color: white;">
										중복확인</div>
								</div>
								<div class="help_txt" id="phone_number_help"></div>
							</div>

							<!-- 소속 동아리 -->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div class="signup_input_1">소속 동아리</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%;">
									<div class="signup_input_2" style="width: 100%;">
										<input class="input_title" type="text" id="circle_at" pattern="\d*"
											required="" placeholder="소속 동아리 입력" name="circel_at"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
								</div>
								<div class="help_txt" id="phone_number_help"></div>
							</div>


							<!--연락처-->
							<div class="signup_input" style="margin-bottom: 25px;">
								<div class="signup_input_1">휴대폰 번호</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%; margin-bottom: 5px;">
									<div class="signup_input_2" style="width: 58%;">
										<input class="input_title" type="text" id="phone_number"
											name="phone" pattern="\d*" required=""
											placeholder="- 를 제외한 휴대폰번호"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
								</div>
								
							</div>

							<!-- 생년월일 -->
							<div class="signup_input" style="margin-bottom: 5px;">
								<div class="signup_input_1">생년월일</div>
								<div
									style="display: flex; flex-direction: row; justify-content: space-between; width: 100%;">
									<div class="signup_input_2" style="width: 58%;">
										<input class="input_title" type="date" id="#" pattern="\d*"
											required="" name="birthdate"
											style="width: 100%; text-align: left; margin: 0; padding: 0; padding-left: 15px; border: 0;">
									</div>
								</div>
							</div>


						</div>

						<div class="submit_btn" style="display: flex;">
							<div class="footer_btn 1_a_btn btn_title none" id="prevButton"
								style="background: #EBEBEB; color: #222222; width: 30%;">이전</div>
							<div class="footer_btn 2_b_btn btn_title w-70 none"
								onclick="register()" style="width: 70%;">가입하기</div>
						</div>

					</div>
				</div>


			</div>
		</div>
	</form>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<script type="text/javascript">
		function check_id() {
			var userid = $("#userid").val();
			
			if(userid==""){
				alert("아이디를 입력하세요");
				$("#userid").focus();
			}else{
				$.ajax({
					url : "${cpath}/id_check.do",
					type : 'post',
					data : {"userid":userid},
					dataType : "json",
					success : function(data){
						if(data==1){
							alert("아이디가 존재합니다. 다른 아이디를 입력해 주세요.");
							$("#userid").focus();
						}else{
							alert("사용가능한 아이디 입니다.");
							$("#password").focus();
						}
					},
					error : function(){alert("삐용삐용");}
				});
			}
			
		}
	</script>
	<script type="text/javascript">
		function check_nick() {
			var usernick = $("#nick").val();
			
			if(usernick==""){
				alert("닉네임을 입력하세요");
				$("#nick").focus();
			}else{
				$.ajax({
					url : "${cpath}/nick_check.do",
					type : "post",
					data : {"nick":usernick},
					dataType : "json",
					success : function(data){
						if(data==1){
							alert("닉네임이 존재합니다. 다른 닉네임을 입력해 주세요.");
							$("#nick").focus();
						}else{
							alert("사용가능한 닉네임 입니다.");
							$("#circle_at").focus();
						}
					},
					error : function(){alert("삐용삐용");}
				});
			}
		}
	</script>
	<script type="text/javascript">
		var swiper = new Swiper('.swiper-container', {
			// 여러 옵션들을 설정할 수 있습니다.
			slidesPerView : 1,
			spaceBetween : 10,
			allowTouchMove : false,
			navigation : {
				nextEl : '#nextButton',
				prevEl : '#prevButton',
			},
		});
	</script>

	<script type="text/javascript">
		function change_btn(e) {
			var btns = document.querySelectorAll(".custom-block-icon");
			btns.forEach(function(btn, i) {
				if (e.currentTarget == btn) {
					btn.classList.add("active");
				} else {
					btn.classList.remove("active");
				}
			});
			console.log(e.currentTarget);
		}
	</script>

	<script type="text/javascript">
		function selected_university(obj, index, region) {
			university_id = Number(index);
			$('#university').val(university_id)
			$('#region').val(region)
			$('.un_btn2').removeClass('act_btn');
			$(obj).addClass('act_btn');
			$('.3_b_btn').addClass('submit_act')
			var university_name = $(obj).text();
			$('.university_name').text(university_name)
			console.log(university_name);

		}
	</script>
	<script type="text/javascript">
		function selected_mbti(obj, mbti) {
			$('#mbti').val(mbti)
			$('.un_btn2').removeClass('act_btn');
			$(obj).addClass('act_btn');
			$('.3_b_btn').addClass('submit_act')
			var mbti = $(obj).text();
			$('.university_name').text(mbti)
			$('#department').val('')

		}
	</script>
	<script type="text/javascript">
		function selected_preference(obj, preference) {
			$('#preference').val(preference)
			$('.un_btn2').removeClass('act_btn');
			$(obj).addClass('act_btn');
			$('.3_b_btn').addClass('submit_act')
			var mbti = $(obj).text();
			$('.university_name').text(preference)
			$('#department').val('')

		}
	</script>
	<script type="text/javascript">
		function pwCheck(){
			var pw = $("#password").val();
			var pwChk = $("#password_chk").val();
				
			var element = document.getElementById('pwlabel');
			if(pw != pwChk){
				element.innerHTML = '<div style ="color:red;font-style:italic;" class="signup_input_1">비밀번호가 다릅니다!</div>';
				$("#password").focus();
			}else{
				element.innerHTML = '<div style ="color:green;font-style:italic;" class="signup_input_1">비밀번호 일치</div>';
			};
		}
	</script>
	<script type="text/javascript">
		function register() {
			var userid = $("#userid").val();
			var usernick = $("#nick").val();
			if(userid=="" || usernick==""){
				alert("모든 정보를 입력하세요");
			}else{
			alert("회원가입 성공");
				
			document.getElementById('frm').submit();
			}
		}
	</script>

	
</body>
</html>