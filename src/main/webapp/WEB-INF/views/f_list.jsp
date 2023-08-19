<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>   
<c:forEach var="vo" items="${list}" varStatus="status">
								
								<div class="col-lg-3 col-md-4 col-6">
									<div class="job-thumb job-thumb-box friendCard" onclick="friendSelected(this)">
										<div class="job-image-box-wrap">
											
											<c:if test="${vo.ani_name == '강아지'}">											
											<img
												src="./resources/images/animal_images/강아지.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '고양이'}">											
											<img
												src="./resources/images/animal_images/고양이.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '꼬부기'}">											
											<img
												src="./resources/images/animal_images/꼬부기.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '늑대'}">											
											<img
												src="./resources/images/animal_images/늑대.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '말'}">											
											<img
												src="./resources/images/animal_images/말.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '물고기'}">											
											<img
												src="./resources/images/animal_images/물고기.png"
												class="job-image img-fluid" alt="">
											</c:if>
											<c:if test="${vo.ani_name == '쥐'}">											
											<img
												src="./resources/images/animal_images/쥐.png"
												class="job-image img-fluid" alt="">
											</c:if>

										</div>

										<div class="job-body" style="padding-top: 5px; padding: 20px;">

											<div class="d-flex align-items-center">
												<p class="mb-0"
													style="white-space: nowrap; font-weight: 700; font-size: 17px;">${vo.nick}</p>

											</div>

											<div class="d-flex align-items-center">

												<p class="job-date" style="font-size: 10px;">
													<i class="custom-icon bi-clock me-1"></i> ${vo.preference}
												</p>
											</div>

											<div class="align-items-center friendMeet1" style="display: none;">
												<a href="job-details.html" class="custom-btn btn"
													style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">프로필</a>
											</div>
											<div class="align-items-center friendMeet2" style="display: none;">
												<a href="job-details.html" class="custom-btn btn"
													style="width: 100%; margin-top: 5px; padding: 5px; border-radius: 7px;">채팅</a>
											</div>
										</div>
									</div>
								</div>
								
								</c:forEach>