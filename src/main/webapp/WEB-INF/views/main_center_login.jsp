<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<div class="title-group mb-4" style="text-align: center;">
	<small class="text-muted">Welcome!</small>
	<h1 class="h2 mb-0">${mvo.u_name} ${mvo.nick}님,</h1>

</div>

<div class="col-lg-5 col-12" style="width: 100%;">
<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white banner"
		style="padding: 0;">
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  		<div class="carousel-inner">
    		<div class="carousel-item active" data-bs-interval="5000">
      			<img src="./resources/images/banner/animal_banner.png" class="d-block w-100" alt="..." onclick="location.href = '${cpath}/make_profile.do'">
    		</div>
    		<div class="carousel-item" data-bs-interval="5000">
      			<img src="./resources/images/banner/preference.png" class="d-block w-100" alt="..." onclick="location.href='${cpath}/researchPage.do'">
 				   		
    		</div>
  		</div>
	</div>
	</div>
	
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
		<div style="float: left; margin-right: 10%; margin-left: 8%">
		<canvas id="polar-chart" width="400" height="225"></canvas>
		</div>
	
		<div style="float: left">
		<canvas id="radar-chart" width="400" height="225"></canvas>
		</div>
	</div>	
		<c:if test="${chk_t eq 1}">
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">

		<div class="title-group mb-3" style="text-align: left;">
			<h1 class="h5 mb-0">교내 추천 동아리</h1>
			<small class="text-muted">10minutes이 추천하는 ${mvo.u_name}의
				동아리에요</small>
		</div>
		
		<div class="d-flex" style="padding: 10px 25px 10px 25px;">
			
			<c:forEach var="clist" items="${t_list1}">
			<div
            style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 30px;">
            <img src="./resources/images/crown_1.svg" alt="crown_1">
            <div class="fw700_16_19_8E" style="color: #FFBC58;">1</div>
         </div>
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circle_logos/${clist.circle_name}.png"
					class="job-image img-fluid" alt="">
			</div>
			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${clist.circle_category}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="${cpath }/c_board.do?circle_seq=${clist.circle_seq}" class="job-title-link">${clist.circle_name}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.u_name}
						</p>

					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		
		
	<div class=" d-flex" style="padding: 10px 25px 10px 25px;">
			
			<c:forEach var="clist2" items="${t_list2}">
			<div
            style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 30px;">
            <img src="./resources/images/crown_2.svg" alt="crown_2">
            <div class="fw700_16_19_8E" style="color: #ACC9DA;">2</div>
         </div>
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circle_logos/${clist2.circle_name}.png"
					class="job-image img-fluid" alt="">
			</div>
			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${clist2.circle_category}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="${cpath }/c_board.do?circle_seq=${clist2.circle_seq}" class="job-title-link">${clist2.circle_name}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.u_name}
						</p>

					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		
		
		
		<div class=" d-flex" style="padding: 10px 25px 10px 25px;">
			
			<c:forEach var="clist3" items="${t_list3}">
			<div
            style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin-right: 30px;">
            <img src="./resources/images/crown_3.svg" alt="crown_3">
            <div class="fw700_16_19_8E" style="color: #DCA26C;">3</div>
         </div>
			<div class="job-image-wrap bg-white shadow-lg">
				<img src="./resources/images/circle_logos/${clist3.circle_name}.png"
					class="job-image img-fluid" alt="">
			</div>
			<div
				class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">

				<div class="mb-3">
					<p class="job-title mb-lg-0"
						style="text-align: left; font-size: 13px;">
						<a href="#" class="job-title-link">${clist3.circle_category}</a>
					</p>
					<h4 class="job-title mb-lg-0">
						<a href="${cpath }/c_board.do?circle_seq=${clist3.circle_seq}" class="job-title-link">${clist3.circle_name}</a>
					</h4>

					<div class="d-flex flex-wrap align-items-center"
						style="margin-top: 5px; text-align: left;">
						<p class="job-location mb-0" style="font-size: 13px;">
							<i class="custom-icon bi-geo-alt me-1"></i> ${mvo.u_name}
						</p>

					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		
		
	</div>
	</c:if>
	<div
		class="custom-block custom-block-profile-front custom-block-profile text-center bg-white">
		<div class="title-group mb-3" style="text-align: left;">
			<h1 class="h5 mb-0">이 달의 동아리 랭킹</h1>
			<small class="text-muted">가장 활동이 많은 동아리를 알려줄 거에요</small>
		</div>
		<div class="custom-block custom-block-bottom d-flex flex-wrap"
			style="margin-bottom: 0px; justify-content: space-around; padding: 0px;">
			
			<c:forEach varStatus="i" var = "rvo" items="${r_list}">
			<form id="rfrm${i.index+1}" action="${cpath}/c_board.do" method="post">
					<input type="hidden" name="circle_seq" value="${rvo.circle_seq}">
				</form>
			
			<div class="nav-item featured-box mt-lg-5 mt-4 mb-4"
				style="background-color: white; width: 30%; text-align: left;">
					<c:if test="${i.index+1 eq 1 }">
				<div class="rank_title" style="color: #F8C86C; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #F8C86C;">${i.index+1}</span>st
				</div>
					</c:if>
					<c:if test="${i.index+1 eq 2 }">
				<div class="rank_title" style="color: #ACC9DA; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #ACC9DA;">${i.index+1}</span>st
				</div>
					</c:if>
					<c:if test="${i.index+1 eq 3 }">
				<div class="rank_title" style="color: #DCA26C; font-size: 28px;">
					<span style="border-bottom: 3px solid; color: #DCA26C;">${i.index+1}</span>st
				</div>
					</c:if>
				<div style="display: flex; flex-direction: column;">
					<div class="rank_uname"
						style="color: #717275; font-weight: 400; font-size: 12px; line-height: 11px; padding-top: 5px;">${rvo.u_name}</div>
					<div
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="rank_cname" style="font-weight: 700; font-size: 17px;">${rvo.circle_name}</div>
					</div>
				</div>
				<div class="image-wrapper">
					<img src="./resources/images/circle_logos/${rvo.circle_name}.png" class="img-fluid"
						alt="" style="width: auto;" onclick="rank${i.index+1}()">
				</div>
				
			</div>
			</c:forEach>
			
			
			
		</div>
	</div>
</div>