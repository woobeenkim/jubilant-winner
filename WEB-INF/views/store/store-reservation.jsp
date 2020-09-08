<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>매장 관리자 (예약관리)</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Jquery Modal CSS -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.modal.css"
	rel="stylesheet">

<!-- Jquery UI CSS -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.css"
	rel="stylesheet">

<!-- Custom Common CSS -->
<link href="${pageContext.request.contextPath}/assets/css/common.css"
	rel="stylesheet">

</head>

<body class="bg-light">

	<!-- 헤더 네비 -->
	<c:import url="/WEB-INF/views/include/manager-header.jsp"></c:import>

	<!-- /. 타이틀 -->

	<!-- 컨텐츠 -->
	<div class="container">

		<!-- 컨텐츠 묶음 : 캘린더, 매장정보 -->
		<div class="row mb-3">

			<!-- 컨텐츠 내용 : 캘린더 -->
			<div class="col-md-4">
				
			</div>
			<!-- /. 컨텐츠 내용 : 캘린더 -->

			<!-- 컨텐츠 내용 : 매장 정보 -->
			<div class="col-md-8">

				<h2>샵 이름</h2>

				<p class="mt-1">(매장 소개 간략) 저희 매장은 블라블라 쏼라쏼라 아싸라비아 킹왕짱...</p>

				<!-- 별표 점수매기기 -->
				<span class="star-input"> <span class="input"> <input
						type="radio" name="star-input" id="p1" value="0.5"><label
						for="p1">0.5</label> <input type="radio" name="star-input" id="p2"
						value="1.0"><label for="p2">1.0</label> <input
						type="radio" name="star-input" id="p3" value="1.5"><label
						for="p3">1.5</label> <input type="radio" name="star-input" id="p4"
						value="2.0"><label for="p4">2.0</label> <input
						type="radio" name="star-input" id="p5" value="2.5"><label
						for="p5">2.5</label> <input type="radio" name="star-input" id="p6"
						value="3.0"><label for="p6">3.0</label> <input
						type="radio" name="star-input" id="p7" value="3.5"><label
						for="p7">3.5</label> <input type="radio" name="star-input" id="p8"
						value="4.0"><label for="p8">4.0</label> <input
						type="radio" name="star-input" id="p9" value="4.5"><label
						for="p9">4.5</label> <input type="radio" name="star-input"
						id="p10" value="5.0"><label for="p10">5.0</label>
				</span> <output for="star-input">
						<b>0</b>점
					</output>
				</span>
				<!-- /. 별표 점수매기기 -->

				<h6 class="reviewTitle">리뷰 51개 | 1개월 | 3개월 | 6개월</h6>

				<!-- 예약설정 버튼 -->
				<p>
					<a class="btn btn-secondary btn-example" href="#layer2"
						role="button">예약설정 &raquo;</a>
				</p>
				<!-- /. 예약설정 버튼 -->

				<!-- 예약설정 -->
				<div class="dim-layer">
					<div class="dimBg"></div>
					<div id="layer2" class="pop-layer">
						<div class="pop-container">
							<div class="pop-conts">
								<!-- 예약팝업 -->
								<div class="btn-l">
									<h4>예약설정</h4>
								</div>
								<div class="pop-close-x">
									<a type="button" class="close btn-layerClose"
										aria-label="Close" href=""><span aria-hidden="true">&times;</span></a>
								</div>
								<div class="px-5 mb-3">
									<input type="text" value="" class="form-control mb-3"
										id="adminDateResult" name="reservation_date"
										placeholder="날짜를 선택하세요.">
								</div>
								<div id="adminCalendar" class="px-5 mb-3"></div>
								<div class="px-5 mb-3">
									<table class="table table-sm text-center">
										<thead>
											<tr>
												<th scope="col" colspan="2">예약가능시간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="08:00"
														data-time="08:00">8:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="14:00"
														data-time="14:00">14:00</label></td>
											</tr>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="09:00"
														data-time="09:00">09:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="15:00"
														data-time="15:00">15:00</label></td>
											</tr>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="10:00"
														data-time="10:00">10:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="16:00"
														data-time="16:00">16:00</label></td>
											</tr>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="11:00"
														data-time="11:00">11:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="17:00"
														data-time="17:00">17:00</label></td>
											</tr>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="12:00"
														data-time="12:00">12:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="18:00"
														data-time="18:00">18:00</label></td>
											</tr>
											<tr>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="13:00"
														data-time="13:00">13:00</label></td>
												<td><label class="m-0"><input type="checkbox"
														class="mr-2" name="adminTimeSetting" value="19:00"
														data-time="19:00">19:00</label></td>
											</tr>
											
										</tbody>
										</if>
									</table>
								</div>
								<div class="btn-r px-5 text-center">
									<a class="btn btn-primary btn-sm btn-layerClose mr-2 px-3"
										href="#" role="button">확인</a> <a
										class="btn btn-secondary btn-sm btn-layerClose ml-2 px-3"
										href=""
										role="button">닫기</a>
								</div>
								<!-- /. 예약팝업 -->
							</div>
						</div>
					</div>
				</div>
				<!-- /. 예약설정 -->

			</div>
			<!-- /. 컨텐츠 내용 : 매장 정보 -->

		</div>
		<!-- /. 컨텐츠 묶음 : 캘린더, 매장정보 -->

		<!-- 컨텐츠 묶음 : 예약 내역 -->
		<div class="row mb-5">

			<!-- 컨텐츠 내용 : 예약 내역 -->
			<div class="col-md-12">
				<h2 class="mb-3">예약 내역</h2>

				<table class="table table-hover text-center">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">고 객 명</th>
							<th scope="col">날 짜 및 예약시간</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${empty RList }">
						</c:if>
						<c:if test="${not empty RList }">
							<c:forEach items="${RList}" var="reservationvo">
								<tr>
									<th scope="row">${reservationvo.regno}</th>
									<td>${reservationvo.username}</td>
									<td>${reservationvo.regdate}</td>
								</tr>
							</c:forEach>
						</c:if>
				
					</tbody>
				</table>

			</div>
			<!-- /. 컨텐츠 내용 : 예약 내역 -->

		</div>
		<!-- /. 컨텐츠 묶음 : 예약 내역 -->

	</div>
	<!-- /. 컨텐츠 -->

	</main>
	<!-- /. main -->



	<!-- 풋터 -->
	<footer class="bg-dark">
		<div class="container">
			<p class="m-0 py-4 text-left text-white">
				<a class="navbar-brand" href="#"><img
					src="${pageContext.request.contextPath}/assets/image/logo/lettering-bright.png"></a><br>
				<br> <b>페타그램</b>&nbsp;&nbsp;&nbsp;서울특별시 서초구 서초대로 77길 13 401호<br>
				<b>대표이사</b> : 풀스택A팀&nbsp;&nbsp;&nbsp;<b>사업자등록번호</b> :
				000-00-00000&nbsp;&nbsp;&nbsp;<b>고객센터</b> :
				02-000-0000&nbsp;&nbsp;&nbsp;<b>이메일</b> : help@petagram.com
			</p>
		</div>
	</footer>
	<!-- /. 풋터 -->

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Jquery UI javaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/jquery/datepicker-ko.js"></script>

	<!-- custom javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>

</body>


<script type="text/javascript">
	$(".mr-2")
			.on(
					"click",
					function() {
						console.log("클릭");
						var regdate = adminDateResult.val() + " "
								+ $(this).data("time");

						console.log(regdate);
						$
								.ajax({
									url : "${pageContext.request.contextPath }/store/${shopDomain}/read",
									type : "post",
									/* contentType : "application/json", */
									data : {
										regdate : regdate
									},
									dataType : "json"

								});
					})
</script>

</html>
