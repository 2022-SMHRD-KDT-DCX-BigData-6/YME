<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<c:forEach var="vo" items="${list}">
				
								<c:if test="${!empty vo}">
								<div class="col-lg-3 col-md-3 col-12" >
									<div class="job-thumb job-thumb-box">
										<div class="job-image-box-wrap">
											<a href="${cpath}/c_board.do?circle_seq=${vo.circle_seq}"> <img
												src="./resources/images/circle_logos/${vo.circle_name}.png"
												class="job-image img-fluid" style="width: 200px;height: 200px" alt="">
											</a>

										</div>

										<div class="job-body" style="padding-top: 10px;">

													<p class="mb-0"
														style="white-space: nowrap; font-weight: 700; font-size: 17px;">${vo.circle_name}</p>


											<div class="d-flex align-items-center">
												<p class="job-location" style="font-size: 10px;">
													<i class="custom-icon bi-geo-alt me-1"></i> ${vo.u_name}
												</p>

												<p class="job-date" style="font-size: 10px;">
													<i class="custom-icon bi-clock me-1"></i> ${vo.circle_category}
												</p>
											</div>

											<div class="d-flex align-items-center pt-3">
												<a href="${cpath}/c_board.do?circle_seq=${vo.circle_seq}" class="custom-btn btn"
													style="width: 100%;">동아리 방문</a>
											</div>
										</div>
									</div>
								</div>
								</c:if>

</c:forEach>   