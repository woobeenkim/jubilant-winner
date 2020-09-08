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

<title>매장 고객 (예약하기)</title>

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

	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>
	<!-- /. 타이틀 -->

	<!-- 컨텐츠 -->
	<div class="container">
	
		<!-- 컨텐츠 제목 -->
		<div class="row mb-3">
			<div class="col-md-12">
				<h2>예약 하기</h2>
				<hr>
			</div>
		</div>
		<!-- /. 컨텐츠 제목 -->
				
		<!-- 컨텐츠 내용 -->
		<div class="row">
			<div class="col-md-1"></div>
			<!-- 캘린더, 시간 선택영역 -->
			<div class="col-md-3">
				<!-- 달력 -->
				<div class="row mb-5">
					<div class="col-md-12">
						<h5 class="mb-2">
							<b>날짜 선택</b>
						</h5>
						<!-- 달럭 라이브러리 들어간 부분 -->
						<div id="date1"></div>
						<!-- /. 달럭 라이브러리 들어간 부분 -->
					</div>
				</div>
				<!-- 시간표 -->
				<div class="row mb-3">
					<div class="col-md-12">
						<h5 class="mb-2">
							<b>시간 선택</b>
						</h5>
						<table
							class="table table-sm text-center mb-3 tbl_client_reservation">
							<thead>
								<tr>
									<th scope="col">시 간</th>
									<th scope="col">현 황</th>
									<th scope="col">선 택</th>
								</tr>
							</thead>
							
							<tbody id="seldataArea">
								
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<!-- 예약정보 입력영역 -->
			<div class="col-md-7">
				<form action = "${pageContext.request.contextPath}/store/${shopDomain}/reservation" method="POST">
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="row mb-2">
								<div class="col-md-1"></div>
								<div class="col-md-11">
									<h5 class="mb-2">
										<b>상세 내용</b>
									</h5>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-2">
									<h6>
										<b>날&nbsp;&nbsp;&nbsp;&nbsp;짜</b>
									</h6>
								</div>
								<div class="col-md-9">
									<input type="text" id="dateResult" class="form-control"
										required readonly>
								</div>
							</div>
							<div class="row mb-5">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-2">
									<h6>
										<b>시&nbsp;&nbsp;&nbsp;&nbsp;간</b>
									</h6>
								</div>
								<div class="col-md-9">
									<input type="text" id="timeResult" class="form-control"
										required readonly>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-2">
									<h6>
										<b>고객명</b>
									</h6>
								</div>
								<div class="col-md-9">
									<input type="text" id="username" name ="username" class="form-control" value="${uservo.userName}" required>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-1">
									<h6>
										<b>연락처</b>
									</h6>
								</div>
								<div class="col-md-9">
									<input type="text" id="usercontact" name="usercontact" class="form-control" value="${uservo.phoneNo}" required>
								</div>
							</div>
							<div class="row mb-5">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-1">
									<h6>
										<b>펫선택</b>
									</h6>
								</div>
								<div class="col-md-9 btn-group">
									<button type="button"
										class="btn btn-outline-secondary dropdown-toggle btn-dropdown"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">예약하실 펫을 선택하세요.</button>
									<div class="dropdown-menu dropdown-menu-left">
										<!-- 아이템추가: .dropdown-mypet-item.html() 변경 -->
										<c:forEach items="${dList}" var="dogvo">
										<button class="dropdown-item dropdown-mypet-item" 
											type="button" value="" >${dogvo.dogName}</button>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="row mb-4">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-1">
									<h6>
										<b>등록증</b>
									</h6>
								</div>
							<div class="col-md-9 petLicenseWrap">
			                    <div class="petLicense rounded-lg">
			                      <div class="petLicensePicture"></div>
			                      <div class="petLicenseTitle text-center">반려동물 등록증</div>
			                      <!-- 이름변경: .petLicenseTitle.html() 변경 -->
			                      <div class="petLicenseName text-center"><label class="lblName">펫 이름</label></div>
			                      <div class="petLicenseSubTitle">종&nbsp;&nbsp;&nbsp;&nbsp;류 :<br>나&nbsp;&nbsp;&nbsp;&nbsp;이 :<br>몸무게 :</div>
			                      <!-- 종류변경: .lblKind.val() 변경 / 나이변경: .lblAge.val() 변경 / 몸무게변경: .lblWeight.val()변경 -->
			                      <div class="petLicenseContents"><label class="lblKind"></label><br><label class="lblAge"></label> 세<br><label class="lblWeight"></label> kg</div>
			                      <div class="petLicenseStamp text-center">페타그램</div>
			                      <div class="petLicenseFooter text-center">페 타 그 램</div>
			                      <input type="hidden" class="lblNo" value="">
			                    </div>
			                  </div>
								
							</div>
							<!-- <div class="row mb-3">
                  <div class="col-md-3"></div>
                  <div class="col-md-9 mt-5 text-center text-primary"><h6><b>예약이 완료되었습니다.</b></h6></div>
                </div> -->
						</div>
					</div>
					
				<div class="dim-layer">
				<div class="dimBg"></div>
		        <div id="layer2" class="pop-layer">
		        </div>
				</div>
		
						
					
				</form>
			</div>
		</div>
		<!-- /. 컨텐츠 내용 -->
	</div>
		<!-- 컨텐츠 마무리 -->
		<div class="row mb-3">
			<div class="col-md-12">
				<hr>
			</div>
		</div>
		
	
		<div class="row mb-5">
			<div class="col-md-8"></div>
			<div class="col-md-2">
				<a class="btn btn-primary btn-sm btn-block btn-example" id = "btnreserv"
					 role="button">예 약</a>
			</div>
			<div class="col-md-2">
				<a class="btn btn-secondary btn-sm btn-block" href="#" role="button">취
					소</a>
			</div>
		</div>
			<!-- /. 컨텐츠 마무리 -->
		<!-- 예약확인 팝업 -->
	      <div class="dim-layer">
	        <div class="dimBg"></div>
	        <div id="layer2" class="pop-layer">
	          <div class="pop-container">
	            <div class="pop-conts">
	                <!-- 예약확인 팝업 : 내용 -->
	                <div class="btn-l">
	                  <h4>예약확인</h4>
	                </div>
	                <!-- -- -->
	                <div class="pop-close-x">
	                  <a type="button" class="close btn-layerClose" aria-label="Close" href="#"><span aria-hidden="true">&times;</span></a>
	                </div>
	                <!-- -- -->
	                <table class="table table-sm">
	                  <colgroup>
	                    <col width="27%">
	                    <col width="73%">
	                  </colgroup>
	                  <thead>
	                    <tr class="table-primary"><th scope="col" colspan="3">매장 정보</th></tr>
	                  </thead>
	                  <tbody>
	                    <tr><td scope="row" class="text-center">매장이름 :</td><td colspan="2">${shopVo.shopTitle }</td></tr>
	                    <tr><td scope="row" class="text-center">매장번호 :</td><td colspan="2">02 - 312 - 3333</td></tr>
	                    <tr><td scope="row" class="text-center">매장주소 :</td><td colspan="2">서울특별시 서초구 모모동</td></tr>
	                  </tbody>
	                </table>
	                <!-- -- -->
	                <table class="table table-sm">
	                  <colgroup>
	                    <col width="27%">
	                    <col width="73%">
	                  </colgroup>
	                  <thead>
	                    <tr class="table-primary"><th scope="col" colspan="3">예약 정보</th></tr>
	                  </thead>
	                  <tbody>
	                    <tr><td scope="row" class="text-center">예약날짜 :</td><td colspan="2">2020 / 08 / 29</td></tr>
	                    <tr><td scope="row" class="text-center">예약시간 :</td><td colspan="2">11:00</td></tr>
	                  </tbody>
	                </table>
	                <!-- -- -->
	                <table class="table table-sm">
	                  <colgroup>
	                    <col width="27%">
	                    <col width="73%">
	                  </colgroup>
	                  <thead>
	                    <tr class="table-primary"><th scope="col" colspan="3">고객 정보</th></tr>
	                  </thead>
	                  <tbody>
	                    <tr><td scope="row" class="text-center">고객성명 :</td><td colspan="2">홍길동</td></tr>
	                    <tr><td scope="row" class="text-center">연 락 처 :</td><td colspan="2">010 - 1111 - 1111</td></tr>
	                  </tbody>
	                </table>
	                <!-- -- -->
	                <table class="table table-sm">
	                  <colgroup>
	                    <col width="27%">
	                    <col width="73%">
	                  </colgroup>
	                  <thead>
	                    <tr class="table-primary"><th scope="col" colspan="3">반려동물 정보</th></tr>
	                  </thead>
	                  <tbody>
	                    <tr><td scope="row" class="text-center">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 :</td><td colspan="2">호두</td></tr>
	                    <tr><td scope="row" class="text-center">종&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;류 :</td><td colspan="2">푸들</td></tr>
	                    <tr><td scope="row" class="text-center">나&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이 :</td><td colspan="2">2 세</td></tr>
	                    <tr><td scope="row" class="text-center">몸 무 게 :</td><td colspan="2">8.2 kg</td></tr>
	                  </tbody>
	                </table>
	                <!-- -- -->
	                <div class="btn-r">
	                  <a class="btn btn-primary btn-sm btn-layerClose" href="${pageContext.request.contextPath}/store/${shopDomain}/reservation" role="button">예약 확정</a>
	                  <a class="btn btn-secondary btn-sm btn-layerClose" href="${pageContext.request.contextPath}/store/${shopDomain}/reservationform" role="button">다시 작성</a>
	                </div>
	              <!-- /. 예약확인 팝업 : 내용 -->
	            </div>
	          </div>
	        </div>
	      </div>
		
		
		<!-- /. 예약확인 팝업 -->

		<!-- /. 컨텐츠 -->
		</main>



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
	$("#dateResult").on("click",function() {
		$("#seldataArea").text("");
		console.log("클릭");
		var regdate = dateResult.val();
	
		console.log(regdate);
		$.ajax({
					url : "${pageContext.request.contextPath }/store/${shopDomain}/seldate",
					type : "post",
					/* contentType : "application/json", */
					data : {
						regdate : regdate
					},
					dataType : "json",
					success : function (reserList){
						console.log(reserList);
						for(var i=0; i<reserList.length; i++){
							render(reserList[i]);	
						}
					}
				});
	});
	
	$(".dropdown-item").on("click", function(){
		$(".lblKind").text("");
		$(".lblAge").text("");	
		$(".lblWeight").text("");
		
		console.log("클릭@");
		$(".dim-layer").text("");
		var userNo = $("#usernocontent").val();
		var dogName = $(this).html();
		console.log(userNo +", "+dogName);
		$.ajax({
			url : "${pageContext.request.contextPath }/store/${shopDomain}/getdog",
			type : "post",
			/* contentType : "application/json", */
			data : {
				userNo : userNo,
				dogName : dogName
			},
			dataType : "json",
			success : function (dogvo){
				console.log(dogvo);
					$(".lblKind").text(dogvo.dogType);
					$(".lblAge").text(dogvo.dogAge);	
					$(".lblWeight").text(dogvo.dogWeight);
					$(".lblNo").val(dogvo.dogNo);
				}
			});
	});
	
	$("#seldataArea").on("click",".timesel",function(){
		$("#timeResult").text("");
		console.log("클릭!");
		var timesel = $(this).data("timesel");
		console.log(timesel);
		$("#timeResult").val(timesel);
	});
	
	function render(storereservationvo) {
		
		var str = "";
		str += "<tr><th scope='row'>"+storereservationvo.regdate+"</th>";
		str += "<td>가능</td>";
		str += "<td><input type='radio' class='timesel' data-timesel='"+storereservationvo.regdate+"' name='timeRadio' value="+ storereservationvo.regdate+"></td></tr>";
		$("#seldataArea").append(str);
	}
	
	$("#btnreserv").on("click",function(){
		console.log("클릭...");
		var regdate = dateResult.val() + " "+ timeResult.val();
		var dogNo = $(".lblNo").val();
		var usercontact = $("#usercontact").val();
		var username = $("#username").val();
		console.log(regdate + ", "+dogNo+ ", "+ usercontact);
		$.ajax({
			url : "${pageContext.request.contextPath }/store/${shopDomain}/reservation",
			type : "post",
			data : {
				regdate : regdate,
				dogno : dogNo,
				usercontact : usercontact,
				username : username
			},
			dataType : "json",
			success : window.location.href = "${pageContext.request.contextPath}/store/${shopDomain}/reservationform"
			});
	});

</script>
</html>