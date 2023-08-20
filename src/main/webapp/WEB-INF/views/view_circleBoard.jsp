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
<meta name="viewport" content="width=device-width, initial-scale=1">

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

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/swiper@10.1.0/swiper-bundle.min.css"
	rel="stylesheet">
<script src="./resources/js/swiper-bundle.min.js"></script>
<script src="./resources/js/swiper-bundle.min2.js"></script>
<script src="./resources/js/swiper-bundle.min3.js"></script>
<script type="text/javascript" src="./resources/js/slick.js"></script>
</head>
<body>
	<header class="navbar sticky-top flex-md-nowrap">
		<div class="col-md-3 col-lg-3 me-0 px-3 fs-6">
			<a class="navbar-brand" href="${cpath}/main.do"> <img
				src=".\resources\images\mainLogo.png" style="width: 10%;">&nbsp;10-Minutes
			</a>
		</div>

		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- 비회원 로그인바 -->
		<c:if test="${empty mvo}">
			<div class="dropdown px-3">
				<a class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"
					style="width: 115px; font-style: italic">Login/Join</a>

				<ul class="dropdown-menu bg-white shadow show"
					data-bs-popper="static">
					<div style="margin: 0 10px 0 10px;">
						<form id="lfrm" action="${cpath}/login.do" method="post">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" name="id" id="id"
									placeholder="ID"
									style="border-color: #A8DADC; border-style: solid;"><label
									for="id">ID</label>
							</div>
							<div class="form-floating mb-3">
								<input type="password" class=" form-control" name="pw" id="pw"
									placeholder="Password"
									style="border-color: #A8DADC; border-style: solid;"> <label
									for="pw">Password</label>
							</div>
					</div>
					<li class="border-top mt-3 pt-2"><button type="button"
							class="dropdown-item ms-0 me-0" onclick="login()">
							<i class="bi-box-arrow-right me-2"></i> 로그인
						</button>
						</form>
						<button type="button" class="dropdown-item ms-0 me-0"
							onclick="joinPage()">
							<i class="bi-box-arrow-right me-2"></i> 회원가입
						</button></li>

				</ul>
			</div>
		</c:if>

		<!-- 회원 로그인바 -->
		<c:if test="${!empty mvo}">
			<div class="navbar-nav me-lg-2">
				<div class="nav-item text-nowrap d-flex align-items-center">
					<div class="dropdown ps-3">
						<a class="nav-link dropdown-toggle text-center" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"
							id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i> <span
							class="position-absolute start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
								<span class="visually-hidden">New alerts</span>
						</span>
						</a>

						<ul
							class="dropdown-menu dropdown-menu-lg-end notifications-block-wrap bg-white shadow"
							aria-labelledby="navbarLightDropdownMenuLink">
							<small>Notifications</small>

							<li class="notifications-block border-bottom pb-2 mb-2"><a
								class="dropdown-item d-flex  align-items-center" href="#">
									<div class="notifications-icon-wrap bg-success">
										<i class="notifications-icon bi-check-circle-fill"></i>
									</div>

									<div>
										<span>Your account has been created successfuly.</span>

										<p>12 days ago</p>
									</div>
							</a></li>

							<li class="notifications-block border-bottom pb-2 mb-2"><a
								class="dropdown-item d-flex align-items-center" href="#">
									<div class="notifications-icon-wrap bg-info">
										<i class="notifications-icon bi-folder"></i>
									</div>

									<div>
										<span>Please check. We have sent a Daily report.</span>

										<p>10 days ago</p>
									</div>
							</a></li>

							<li class="notifications-block"><a
								class="dropdown-item d-flex align-items-center" href="#">
									<div class="notifications-icon-wrap bg-danger">
										<i class="notifications-icon bi-question-circle"></i>
									</div>

									<div>
										<span>Account verification failed.</span>

										<p>1 hour ago</p>
									</div>
							</a></li>
						</ul>
					</div>

					<div class="dropdown px-3">
						<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="./resources/images/medium-shot-happy-man-smiling.jpg"
							class="profile-image img-fluid" alt="">
						</a>
						<ul class="dropdown-menu bg-white shadow">
							<li>
								<div class="dropdown-menu-profile-thumb d-flex">
									<img src="./resources/images/medium-shot-happy-man-smiling.jpg"
										class="profile-image img-fluid me-3" alt="">

									<div class="d-flex flex-column">
										<small>Thomas</small> <a href="#">thomas@site.com</a>
									</div>
								</div>
							</li>

							<li><a class="dropdown-item" href="${cpath }/mypage.do">
									<i class="bi-person me-2"></i> Profile
							</a></li>

							<li><a class="dropdown-item" href="setting.html"> <i
									class="bi-gear me-2"></i> Settings
							</a></li>

							<li><a class="dropdown-item" href="help-center.html"> <i
									class="bi-question-circle me-2"></i> Help
							</a></li>

							<li class="border-top mt-3 pt-2 mx-4"><a
								class="dropdown-item ms-0 me-0" href="#"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</c:if>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-3 d-md-block sidebar collapse">
				<div class="position-sticky py-4 px-3 sidebar-sticky">
					<ul class="nav flex-column h-100">
						<li class="nav-item"><a class="nav-link"
							aria-current="page" href="${cpath}/main.do"> <i
								class="bi-house-fill me-2"></i> 메인
						</a></li>

						<li class="nav-item"><a class="nav-link" href="${cpath }/circle_search.do">
								<i class="bi-wallet me-2"></i> 동아리 찾기
						</a></li>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link" href="javascript:void(0);" onclick="my_circle()">
								<i class="bi-person me-2"></i> 내 동아리</a>
								<ul style="display: none" id="my_circle">
									<li class="nav-item" style="list-style-type: none">
									<a class="nav-link" href="${cpath}/myCircle.do?circle_at=${mvo.circle_at}">${mvo.circle_at}</a>
									</li>
								</ul>
						</li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="${cpath}/researchPage.do"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									성향분석하기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="#"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${empty mvo}">
							<li class="nav-item"><a class="nav-link"
								href="javascript:void(0);" onclick="alert('로그인후 이용가능합니다');return false;"> <i class="bi-person me-2"></i>
									동물 프로필 만들기
							</a></li>
						</c:if>
						<c:if test="${!empty mvo}">
						<li class="nav-item"><a class="nav-link" href="${cpath }/myPage.do">
								<i class="bi-gear me-2"></i> 내 정보
						</a></li>
						</c:if>

						<c:if test="${!empty mvo}">
							<li class="nav-item border-top mt-auto pt-2"><a
								class="nav-link" href="${cpath}/logout.do"> <i
									class="bi-box-arrow-left me-2"></i> Logout
							</a></li>
						</c:if>
					</ul>
				</div>
			</nav>

			<main
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
				<div
					class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">

					<!--동아리 배경 이미지 제외한 하얀색 배경(게시판 전까지)-->
					<div
						style="background: #FFFFFF; border-top-right-radius: 15px; border-top-left-radius: 15px; z-index: 3;">
						<div
							style="display: flex; flex-direction: row; justify-content: flex-start; align-items: center; width: 100%; padding: 0 20px; margin-bottom: 30px;">
							<!--동아리 프로필 이미지-->
							<div style="">
								<img class="club_profile_image"
									src="./resources/images/circle_logos/${circle_detail.circle_name}.png">

							</div>
							<!--동아리 기본 정보( 이름 + 주소 + 회장 + 회원 수)-->
							<!--총동아리연합회-->

							<div style="padding-left: 20px; bottom: 30px;">
								<div class="club_profile_name_1">${circle_detail.circle_name}</div>
								<div class="club_profile_name_3"
									style="display: flex; flex-direction: row; align-items: center;">
									<div>
										<span class="club_profile_name_4" style="color: white">회장</span>${member_name.name}
									</div>

								</div>
							</div>
						</div>

						<c:if test="${mvo.circle_at ne circle_detail.circle_name}">
						<!--모닥불, 가입 버튼, 출첵-->
						<div class="content"
							style="display: flex; justify-content: space-between; margin: 0 20px; border-bottom: 1px solid #F5F5F5; padding-bottom: 25px;">
							<div style="width: 100%;">

								<div style="display: flex; justify-content: space-between;">

									<div style="width: 100%; text-align: center;">
										<div class="join_btn"
											style="width: 100%; background: #4cbcaf; color: #FFFFFF;">
											
											
											<div
												onclick="alert('대학교 인증이 필요합니다.');show_loader();location.href='/web/user/university'">
												<div style="color: #FFFFFF; font-size: 16px;">가입</div>
											</div>
										
										
										</div>
									</div>
									<!--총동아리연합회 + 소속 회원 X-->

								</div>

							</div>
						</div>
						</c:if>
						<c:if test="${mvo.circle_at eq circle_detail.circle_name}">
						<!--모닥불, 가입 버튼, 출첵-->
						<div class="content"
							style="display: flex; justify-content: space-between; margin: 0 20px; border-bottom: 1px solid #F5F5F5; padding-bottom: 25px;">
							<div style="width: 100%;">

								<div style="display: flex; justify-content: space-between;">

									<div style="width: 100%; text-align: center;">
										<div class="join_btn"
											style="width: 100%; background: #4cbcaf; color: #FFFFFF;">
											
											
											<div
												onclick="show_loader();location.href='${cpath}/c_register.do?circle_seq=${circle_detail.circle_seq}'">
												<div style="color: #FFFFFF; font-size: 16px;">게시글 쓰러가기</div>
											</div>
										
										
										</div>
									</div>
									<!--총동아리연합회 + 소속 회원 X-->

								</div>

							</div>
						</div>
						</c:if>
						
						<!--동아리 정보 3( 동아리 소속 대학교, 동아리 종류, 한 줄 소개, 공지사항, 동아리 해시태그)-->
						<div class="content" style="padding-top: 25px;">
							<div
								style="display: flex; flex-direction: row; align-items: center; margin-bottom: 15px;">

								<span class="club_univ_name">${circle_detail.circle_univ}</span>
								<span class="club_type_name"> <c:if
										test="${circle_detail.circle_main == 'Y'}">
										<a>중앙동아리</a>
									</c:if> <c:if test="${circle_detail.circle_main == 'N'}">
										<a>일반동아리</a>
									</c:if>
								</span>

							</div>
							<div class="content"
								style="display: flex; align-items: flex-end;">
								<div id="intro_content"
									style="border-radius: 5px; width: 100%; text-align: left;">
									${circle_detail.circle_intro}</div>
							</div>
							<!--동아리 태그-->
							<div>

								<div
									style="display: flex; flex-direction: row; flex-wrap: wrap; align-items: center; padding: 0 5px; margin: 30px 0;">

									<div class="club_tags">#${circle_detail.circle_category}</div>


								</div>

							</div>
						</div>
					</div>
					<!--동아리 게시판 모음-->
					<!--게시판 제목-->
					<div
						class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
						<div class="swiper-wrapper" id="swiper-wrapper-d2b8fee9b520e995"
							aria-live="polite">

							<div class="board_title none act" data-hash="1">활동 앨범</div>

							<div class="board_title none" data-hash="2">자유 게시판</div>
						</div>
						<!--게시판 목록-->
						<div class="swiper-container content-swiper" style="display: grid">
							<div class="swiper-wrapper" id="swiper-wrapper-623402ac38988796"
								aria-live="polite"
								style="height: 516px; transform: translate3d(-850px, 0px, 0px); transition-duration: 0ms;">


								<div class="swiper-slide" data-hash="1"
									style="width: 840px; margin-right: 10px;" role="group"
									aria-label="2 / 3">
									<div
										style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin: 30px 20px;">
										<div class="board_main_title">활동 앨범</div>
									</div>
									<div class="row" style="margin: 0 20px;">
										<c:if test="${empty circle_A_board}">
											<h6>
											<img alt="x" src="./resources/images/icons/i_board.png" style="width: 20%">
											<span>아직 게시글이 없어요!</span> </h6>
										</c:if>
										<c:if test="${!empty circle_A_board}">
										<form id="frm" action="${cpath}/c_Adetail.do" method="post">
											<c:forEach var="vo" items="${circle_A_board}">
												<input type="hidden" name="board_seq"
													value="${vo.board_seq}">
													<input type="hidden" name ="circle_seq" value="${vo.circle_seq}">
												<div class="col">
													<div class="square"
														style="background-image: url('${vo.board_img}'); background-size: cover; background-position: center;"
														onclick="showAlbum()"></div>
												</div>
											</c:forEach>
										</form>
										</c:if>
									</div>
								</div>




								<div class="swiper-slide" data-hash="2"
									style="width: 840px; margin-right: 10px; text-align: left;"
									role="group" aria-label="3 / 3">
									<div
										style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin: 30px 20px;"
										onclick="show_loader();location.href='/web/club/base_board/club_board/1655'">
										<div class="board_main_title">자유 게시판</div>
									</div>

										<c:if test="${empty circle_T_board}">
											<h6 style="margin-left: 35%">
											<img alt="x" src="./resources/images/icons/i_board.png" style="width: 20%">
											<span>아직 게시글이 없어요!</span> </h6>
										</c:if>


									<c:if test="${!empty circle_T_board}">
									<form id="frm2" action="${cpath}/c_Tdetail.do" method="post">
										<c:forEach var="vo" items="${circle_T_board}">
											<div onclick="showText(${vo.board_seq})">
											<div class="row"
												style="margin: 0 20px; border-bottom: 1px solid #F5F5F5; padding-bottom: 25px; margin-bottom: 25px;"
												>
												<div
													style="display: flex; flex-direction: row; justify-content: space-between; align-items: center; margin-bottom: 10px;">
													<div
														style="width: 95%; text-overflow: ellipsis; white-space: nowrap;">
														<div class="club_board_title">${vo.board_title}</div>
														<div class="club_board_content">${vo.board_content}</div>
													</div>
												</div>
												<div
													style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
													<div
														style="display: flex; flex-direction: row; align-items: center;">
														<div
															style="width: 20px; height: 20px; border: 1px solid #F5F5F5F5; border-radius: 8px; margin-right: 6px;">
															<img class="user_img"
																src="https://mycampus-storage.s3.ap-northeast-2.amazonaws.com/s/shared/temporary/2023/06/15/556fb59b-4fcb-4e3d-8e30-61dc99b111a1.jpg">
														</div>
														<div class="club_board_name">${vo.nick}</div>
													</div>
													<div
														style="display: flex; flex-direction: row; align-items: center;">
														<div class="club_board_name"
															style="display: flex; flex-direction: row; align-items: center; margin-right: 10px;">
															<img src="./resources/images/icons/i_hearts.png"
																style="width: 15px; height: 15px; margin-right: 5px;">
															${vo.likes}
														</div>
														<div class="club_board_name"
															style="display: flex; flex-direction: row; align-items: center;">
															<img src=".\resources\images\reply.svg"
																style="width: 15px; height: 15px; margin-right: 5px;">
															2
														</div>
													</div>
												</div>
											</div>
										</div>
										</c:forEach>
									</form>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>

		<footer class="site-footer">
			<div class="container">
				<div class="row">

					<div class="col-lg-12 col-12">
						<p class="copyright-text">
							Copyright © Mini Finance 2048 - Design: <a rel="sponsored"
								href="https://www.tooplate.com" target="_blank">Tooplate</a>
						</p>
					</div>

				</div>
			</div>
		</footer>
		</main>

	</div>
	</div>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
	<!-- 로그인 기능 -->
<script type="text/javascript">
		function login() {
			
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			if(id !=""&& pw !=""){
				document.getElementById('lfrm').submit();
			}else{
				
				alert("아이디 비밀번호를 확인해 주세요!");
			}
		}
	</script>
	
	<script type="text/javascript">
		function joinPage() {
			location.href = "${cpath}/registerPage.do";
		}
	</script>

	<script type="text/javascript">
		function show_loader(){
			
		}
	</script>

	<!-- 게시판에서 세부게시판 클릭시 board_seq 넘기는 부분 -->
	<script type="text/javascript">
		function showAlbum() {
			document.getElementById('frm').submit();
		}
	</script>

	<script type="text/javascript">
		function showText(board_Seq) {
			var link = '${cpath}/c_Tdetail.do?boardSeq='+board_Seq;
			location.href = link;
		}
	</script>

	<!-- 게시판 슬라이드 -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var swiper = new Swiper('.content-swiper', {
				// Swiper 설정 옵션을 추가하세요.
				allowTouchMove : false
			// 터치로 슬라이드를 막음
			});

			var albumTitle = document
					.querySelector('.board_title[data-hash="1"]');
			var freeBoardTitle = document
					.querySelector('.board_title[data-hash="2"]');

			albumTitle.addEventListener('click', function() {
				swiper.slideTo(0); // "활동 앨범" 슬라이드로 이동
				albumTitle.classList.add('act'); // 활성화 스타일 추가
				freeBoardTitle.classList.remove('act'); // 비활성화 스타일 제거
			});

			freeBoardTitle.addEventListener('click', function() {
				swiper.slideTo(1); // "자유 게시판" 슬라이드로 이동
				freeBoardTitle.classList.add('act'); // 활성화 스타일 추가
				albumTitle.classList.remove('act'); // 비활성화 스타일 제거
			});
		});
	</script>
<script type="text/javascript">
	 function my_circle(){
		 var con = document.getElementById("my_circle")
		 if(con.style.display == "none"){
		 $('#my_circle').css("display","block");
			 
		 }else{
			 $('#my_circle').css("display","none");
		 }
	 }
	</script>
</body>
</html>