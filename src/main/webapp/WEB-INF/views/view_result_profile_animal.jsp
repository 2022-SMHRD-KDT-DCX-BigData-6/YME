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

<link href="./resources/css/tooplate-mini-finance.css" rel="stylesheet">

<style>
.dropzone {
	border: 2px dashed #ccc;
	width: 300px;
	height: 300px;
	text-align: center;
	margin: 0 auto;
	cursor: pointer;
}

#image-input {
	padding-right: 60%
}

.input-group {
	padding-inline: 20%
}

.common_top_nav_header {
	text-align: center;
	padding: 15px;
	font-size: 18px;
	font-weight: 600;
	color: #565656;
	background: white;
	width: 100%;
	z-index: 98;
	top: 55px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
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
							<li class="nav-item"><a class="nav-link active "
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
				class="main-wrapper col-md-9 ms-sm-auto py-4 col-lg-9 px-md-4 border-start">
				<c:if test="${ani_name == '강아지'}">
				<!-- 강아지상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/강아지.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">강아지상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							눈코입이 동글동글한 얼굴형<br>초롱초롱하고 내려간 눈꼬리<br> 귀엽고 사랑스러운,
							다정다감하고 친절한 느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">강아지상을
							가진 대표 연예인으로 워너원 강다니엘, EXO 백현, 박보검, 송중기 등이 있습니다.</div>
					</div>

				</div>
				</c:if>
				<c:if test="${ani_name == '고양이'}">
				<!-- 고양이상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/고양이.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">고양이상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							입술이 얇고 눈꼬리가 약간 올라간 얼굴형<br> 시크하고
							도도한 느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">고양이
							상을 가진 남자 연예인으로는 강동원, 이종석, 안재현 등이 있습니다. 여자 연에인은 한혜진, 송해나 등이
							대표적이네요.</div>
					</div>

				</div>
				</c:if>
				<c:if test="${ani_name == '꼬부기'}">
				<!-- 꼬부기 상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/꼬부기.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">꼬부기</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							둥글 둥글한 얼굴형<br> 웃을 때 입이 길게 늘어나는, 귀엽고
							사랑스러운 느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">꼬부기
							상을 가진 연예인으로는 브레이브걸스 유정, 트와이스 나연, 솔라, 레드벨벳 예리, 하연수 등이 대표적이네요.</div>
					</div>

				</div>
				</c:if>
				<c:if test="${ani_name == '늑대'}">
				<!-- 늑대 상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/늑대.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">늑대상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							입체적인 얼굴형 또렷한 눈,코,입<br> 성숙하고 시크한 느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">늑대
							상을 가진 남자 연예인으로는 강동원, 이종석, 안재현 등이 있습니다. 여자 연에인은 한혜진, 송해나 등이
							대표적이네요.</div>
					</div>

				</div>
				</c:if>
				<c:if test="${ani_name == '말'}">
				<!-- 말상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/말.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">말상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							성숙한 느낌의 서구적 얼굴형<br> 단단해 보이는 느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">말
							상을 가진 남자 연예인으로는 ss501 박정민, 신화 김동완, 슈퍼주니어 최시원, 김성수 등이 있습니다.<br> 여자
							연에인은 쥬얼리 하주연, 박은혜, 려원, 제시, 티파니 등이 대표적이네요.</div>
					</div>

				</div>
				</c:if>
				<c:if test="${ani_name == '물고기'}">
				<!-- 물고기상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/물고기.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">물고기상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							이마가 경사지고 볼록한 얼굴형<br>동그랗게 큰 눈<br> 여백없는 얼굴에 왠만하면 이쁜고 잘생긴
							느낌<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">물고기
							상을 가진 연예인으로는 티아라 은정, 카라 구하라, 김민정, 채수빈, 태연, 이건희, 신민아, 한효주, 최여진 등이
							대표적이네요.</div>
					</div>

					<div class="submit_btn" style="display: flex; position: relative;">

						<div class="footer_btn"
							style="z-index: 101; bottom: 0; width: 100%; height: 60px; background: #ececec; color: #FFFFFF; text-align: center; font-weight: 500; font-size: 18px; line-height: 20px; letter-spacing: -0.02em; padding: 20px 0;">
							다시 하기</div>
						<div class="footer_btn"
							style="z-index: 101; bottom: 0; width: 100%; height: 60px; background: #4CBCAF; color: #FFFFFF; text-align: center; font-weight: 500; font-size: 18px; line-height: 20px; letter-spacing: -0.02em; padding: 20px 0;">
							홈으로</div>

					</div>
				</div>
				</c:if>
				<c:if test="${ani_name == '쥐'}">
				<!-- 쥐상 -->
				<div
					class="custom-block custom-block-profile-front custom-block-profil	e text-center bg-white joinCase"
					style="padding: 0;">

					<div class="common_top_nav_header">
						<div
							style="display: flex; justify-content: center; align-items: center;">
							<img onclick="goback()"
								src=".\resources\images\angle_left_new.svg"
								style="position: absolute; left: 0px;"> 모임성향/동물상 테스트

						</div>
					</div>
					<!-- 결과 이미지 -->
					<div>
						<img src="./resources/images/animal_images/쥐.png" style="width: 70%;">
					</div>
					<div
						style="padding: 30px; margin-bottom: 35px; background-color: beige; border-radius: 30px; margin-right: 10px; margin-left: 10px;">
						<!-- 결과 한줄 -->
						<div
							style="font-size: x-large; font-weight: bold; margin-bottom: 10px; color: #FFA500;">쥐상</div>

						<!-- 상세 내용 -->
						<div style="font-weight: 600;">
							작은 얼굴형<br>작으면서 검은자위가 큰 눈<br> 입이 튀어나와 있고,
							앞니가 도드라진 인상<br>
						</div>
						<div style="margin-top: 8px; font-size: smaller; color: #C0C0C0;">쥐
							상을 가진 연예인으로는 유재석, 김기범, 하하, 슬리피, 윤종신 등이
							대표적이네요.</div>
					</div>

				</div>
				</c:if>
					<div class="submit_btn" style="display: flex; position: relative; width: 77%; margin: 0 auto;">

						<div class="footer_btn" onclick="replay()"
							style="z-index: 101; bottom: 0; width: 100%; height: 60px; background: #ececec; color: #FFFFFF; text-align: center; font-weight: 500; font-size: 18px; line-height: 20px; letter-spacing: -0.02em; padding: 20px 0;">
							다시하기</div>
						<div class="footer_btn" onclick="go_nextpage()"
							style="z-index: 101; bottom: 0; width: 100%; height: 60px; background: #4CBCAF; color: #FFFFFF; text-align: center; font-weight: 500; font-size: 18px; line-height: 20px; letter-spacing: -0.02em; padding: 20px 0;">
							친구찾기</div>
						
					</div>
				<footer class="site-footer">
					<div class="container">
						<div class="row">

							<div class="col-lg-12 col-12">
								<p class="copyright-text">
									Copyright © Campus Social Life 2023 - Design: <a
										rel="sponsored" href="https://www.tooplate.com"
										target="_blank">Tooplate</a>
								</p>
							</div>

						</div>
					</div>
				</footer>
			</main>
		</div>

	</div>
	</main>

	</div>
	</div>

	<!-- JAVASCRIPT FILES -->
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/js/apexcharts.min.js"></script>
	<script src="./resources/js/custom.js"></script>
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
	document.addEventListener("DOMContentLoaded", () => {
	    var image_input = document.getElementById("image-input");
	    var imagePreview = document.getElementById("imagePreview");
	    var imageDragdrop = document.getElementById("dropzone");
	    
	    image_input.addEventListener("change", (event) => {
	        var file = event.target.files[0];
	        imagePreview.style.display = "block";
	        imageDragdrop.style.display = "none";
	        if (file) {
	            var reader = new FileReader();
	            
	            reader.onload = (e) => {
	            	imagePreview.src = e.target.result;
	            };
	            
	            reader.readAsDataURL(file);
	        }
	    });
	});
	
</script>

	<!-- drag and drop -->
	<script>
        var dropzone = document.getElementById("dropzone");
        var fileInput = document.getElementById("image-input");
        dropzone.addEventListener("dragover", (event) => {
            event.preventDefault();
            dropzone.classList.add("active");
        });
        
        dropzone.addEventListener("dragleave", () => {
            dropzone.classList.remove("active");
        });
        
        dropzone.addEventListener("drop", (event) => {
            event.preventDefault();
            dropzone.classList.remove("active");
            
            var file = event.dataTransfer.files[0];
            if (file) {
                var reader = new FileReader();
                reader.onload = (e) => {
                    var image = new Image();
                    image.src = e.target.result;
                    image.style.width = '300px';
                    image.style.height = 'auto';
                    dropzone.innerHTML = '';
                    dropzone.appendChild(image);                    
                };
                fileInput.files = event.dataTransfer.files;
                fileInput.style.display = "block";
                
                reader.readAsDataURL(file);
            }
        });
    </script>
	<script type="text/javascript">
		function loginPage() {
			location.href = "${cpath}/loginPage.do";
		}
		function replay(){
			location.href = "${cpath}/make_profile.do";
		}
		
		function go_nextpage(){
			location.href = "${cpath}/view_friendSearch.do";
		}
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