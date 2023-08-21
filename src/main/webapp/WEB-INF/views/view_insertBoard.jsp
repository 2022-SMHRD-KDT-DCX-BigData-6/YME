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
<link rel="stylesheet" href=".\resources\css\swiper-bundle.css">
<script src=".\resources\js\swiper-bundle.min.js"></script>
<script src=".\resources\js\swiper-bundle.min2.js"></script>
<script src=".\resources\js\swiper-bundle.min3.js"></script>
<style type="text/css">
.act_btn {
	color: white !important;;
	background: #4cbcaf;
}

.input_place {
	display: flex;
	flex-direction: column;
	width: 100%;
	font-weight: 500;
	font-size: 14px;
	line-height: 18px;
	letter-spacing: -0.02em;
	color: #666666;
	margin-bottom: 10px;
}

.select_wrap {
	height: 40px;
	border: 1px solid #EBEBEB;
	border-radius: 30px;
	background: url(.\resources\images\angle_right.svg) no-repeat 95% 50%/15px
		auto;
}

.select_name {
	font-weight: 400;
	font-size: 13px;
	line-height: 15px;
	letter-spacing: -0.02em;
	color: #3A3A3A;
	text-align-last: center;
	text-align: center;
	-ms-text-align-last: center;
	-moz-text-align-last: center;
}

.input_content {
	width: 100% !important;
	height: 220px !important;
	background: #F5F5F5 !important;
	color: #999999 !important;
	font-weight: 400 !important;
	font-size: 15px !important;
	line-height: 18px !important;
	letter-spacing: -0.02em;
	border-radius: 5px !important;
	padding: 15px;
	resize: none;
}

.add-btn {
	width: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	color: #181818;
	border-radius: 20px;
	padding: 18px;
	border: 1px solid #ccc;
	border-radius: 5px !important;
}

.preview-container {
	display: none;
	width: 50%;
	border: 1px solid #ccc;
	border-radius: 5px;
	overflow: hidden;
}

.preview-image {
	max-width: 100%;
	max-height: 100%;
	object-fit: contain;
}

.modal {
	/* ... */
	z-index: 2; /* Ensure modal is displayed above everything */
}

.close {
	/* ... */
	z-index: 3; /* Ensure close button is above the modal */
}

.preview-container {
	background-color: #F5F5F5;
	border-radius: 5px;
	overflow: hidden; /* 내용이 넘칠 경우 숨김 처리 */
}

</style>

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
							id="navbarLightDropdownMenuLink"> <i class="bi-bell"></i>
								<span class="visually-hidden">New alerts</span>
						</a>

					</div>

						<div class="dropdown px-3">
						<a class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							 <c:if test="${mc_vo eq 'x' }">
							 <img
							src="./resources/images/icons/i_noProfile.png"
							class="profile-image img-fluid" alt="">
							</c:if>
							<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
						</a>
						<ul class="dropdown-menu bg-white shadow">
							<li>
								<div class="dropdown-menu-profile-thumb d-flex">
								<c:if test="${mc_vo eq 'x' }">
									<img src="./resources/images/icons/i_noProfile.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>
								<c:if test="${mc_vo ne 'x' }">
									<img src="./resources/images/animal_images/${mc_vo.ani_name}.png"
										class="profile-image img-fluid me-3" alt="">
								</c:if>

									<div class="d-flex flex-column">
										<small>${mvo.nick}</small>
									</div>
								</div>
							</li>

							<li><a class="dropdown-item" href="${cpath}/myPage.do">
									<i class="bi-person me-2"></i> Profile
							</a></li>

							<li class="border-top mt-3 pt-2 mx-4"><a
								class="dropdown-item ms-0 me-0" href="${cpath }/logout.do"> <i
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
				class="col-md-3 col-lg-2 d-md-block sidebar collapse">
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
						<li class="nav-item"><a class="nav-link active" href="javascript:void(0);" onclick="my_circle()">
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
								href="${cpath}/make_profile.do"> <i class="bi-person me-2"></i>
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
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-10 px-md-4 border-start">
				<div
					class="custom-block custom-block-profile-front custom-block-profile text-center bg-white"
					style="width: 70%; margin: 0 auto">
					<div class="common_top_nav_header"
						style="text-align: center; padding: 15px; font-size: 18px; font-weight: 600; color: #565656; background: white; width: auto; z-index: 98; top: 55px; border-bottom: 1px solid rgba(0, 0, 0, 0.08);">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							게시글 등록
						</div>
					</div>
					<div class="page-content header-clear" style="height: auto;">
						<div class="content bottom-0"
							style="height: calc(100% - 60px); padding-top: 15px;">

							<div class="contact-form">



								<form action="${cpath}/c_register.do" id="frm" method="post">
									<input type="hidden" name="circle_seq" value="${param.circle_seq}">

									<div class="input_place">
										<div class="vote_select select_wrap"
											style="width: 100%; border-radius: 10px; height: 50px;">
											<select class="select_name" id="board_tag" name="board_type"
												style="width: 100%; color: #999999; -webkit-appearance: none; height: 100%; border: none;"
												onchange="change_board_tag(this)">
												<option value="" selected>게시판 유형을 선택해 주세요</option>
												<option value="X">자유 게시판</option>
												<option value="O">앨범 게시판</option>
											</select>
										</div>
									</div>


									<div class="input_place">
										<input type="text" name="board_title" id="title" value=""
											placeholder="제목을 입력해주세요." class="input_title">
									</div>

									<div class="input_place"
										style="border-radius: 5px !important; background: #F5F5F5 !important; display: flex; flex-direction: row;">
										<textarea name="board_content" class="input_content"
											placeholder="내용을 입력해주세요." id="content"
											style="margin-top: 0px; height: 300px; border-radius: 5px !important;"></textarea>
									</div>

									
						<!-- HTML form 내부에 파일 입력 필드를 추가 -->
									<div class="input-group" style="display:none">
									<input type="file" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" name="board_img" style="padding-right:36%; width:48%;margin-right:52%; margin-bottom:1%" />
									</div>
									
									<!-- 서버로 실제 파일 이름을 전송하기 위한 숨겨진 필드 -->
									<input type="hidden" id="hidden-file-name" name="fileName" />
								
									
									<div class="submit_btn"
										style="display: flex; position: relative;" id="add">
										<div class="footer_btn 7_a_btn btn_title w-30 none"
											onclick="history.back()"
											style="background: #EBEBEB; color: #222222;">이전</div>
										<button type="button"
											class="footer_btn 7_b_btn btn_title w-70 write_check none" onclick="submitfrm()">게시글
											등록</button>
									</div>
									

								</form>

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
	<script type="text/javascript">
		$("select[name=board_type]").change(function() {
			console.log($(this).val()); //value값 가져오기
			var b_type = $(this).val();
			if (b_type == 'O') {
				$(".input-group").css("display","block");
			}else{
				$(".input-group").css("display","none");
			};
			console.log($("select[name=board_type] option:selected").text()); //text값 가져오기
		});
		

		
		function submitfrm(){
			
		    document.getElementById('inputGroupFile04').addEventListener('change', function(e) {
		        const fileInput = e.target;
		        if (fileInput.files.length > 0) {
		            const fileName = fileInput.files[0].name;
		            console.log('파일 이름:', fileName);

		            // 파일 이름을 숨겨진 필드에 설정 (서버로 전송되도록 함)
		            document.getElementById('hidden-file-name').value = fileName;
		        }
		    });
			
			
			$(".input-group").css("display","none");
			$("#frm").submit();
						
		}
	</script>
	
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
</body>
</html>