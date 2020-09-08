<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>

<head>


<title>마이펫</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/common.css"
	rel="stylesheet">

</head>

<body class="bg-light">

	<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a href="${pageContext.request.contextPath}/main/" class="navbar-brand" ><img src="${pageContext.request.contextPath}/assets/image/lettering-bright.png"></a>
      <!-- small display : menu button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- normal display : navigation list -->
      <div class="collapse navbar-collapse" id="navbarResponsive">

        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/main/listsearch">매장찾기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">자랑하기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">커뮤니티</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">고객센터</a>
          </li>
        </ul>

		<c:choose>
			<c:when test="${empty session }">
		        <ul class="navbar-nav ml-auto">
		          <li class="nav-item">
		            <a class="nav-link" href="${pageContext.request.contextPath}/user/loginForm">로그인</a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="${pageContext.request.contextPath}/user/joinForm">회원가입</a>
		          </li>
		        </ul>
        	</c:when>
        	<c:otherwise>
 				<ul class="navbar-nav ml-auto">
	 				<li class="nav-item">
	        			<a class="nav-link active">${session.userName }님</a>
	        		</li>
					<c:if test="${session.shopNo ne null}">
						<c:if test="${session.shopNo != 0}">
							<li class="nav-item">
		            			<a class="nav-link" href="${pageContext.request.contextPath}/store/${session.shopDomain }/main">내 매장</a>
		          			</li>
	         			</c:if>
					</c:if>
		          	<li class="nav-item">
		            	<a class="nav-link" href="${pageContext.request.contextPath}/pet/petBasic">마이펫</a>
		          	</li>
		          	<li class="nav-item">
		            	<a class="nav-link" href="${pageContext.request.contextPath}/user/storeAddForm">회원정보</a>
		          	</li>
		          	<li class="nav-item">
		            	<a class="nav-link" href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
		          	</li>
			    </ul>
        	</c:otherwise>
        </c:choose>
        
      </div>
    </div>
  </nav>
	<!-- /.Navigation -->


	<!-- Page Content -->
	<!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
	<div class="container">
		<div id="content-head" class="py-5 text-left">
			<h2>마이펫</h2>
			<div id="location">
				<ul class="list-inline">
					<li>마이펫 관리</li>
					<li class="last">예약내역</li>
				</ul>
			</div>
		</div>

		<!-- Category -->
		<div class="row">
			<div class="col-md-2 order-md-1 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="#">마이펫 관리</a>
							</h6>
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="#">자랑하기</a>
							</h6>
						</div>
					</li>

				</ul>
			</div>
			<!-- /. Category -->

			<div class="col-md-10 order-md-2">
				<h4 class="mb-3 text-center center-block">반려견 등록증</h4>
				<form class="needs-validation center-block" novalidate>

					<div class="form-row text-right">
						<div class="col-12">
							<button id="btn-submit" class="btn btn-primary col-md-2"
								type="button"
								onclick="location.href = '${pageContext.request.contextPath}/pet/petAdd'">추가하기</button>
						</div>
					</div>

				
					<c:choose>
						<c:when test="${empty pList}">
							<div class="row">
								<img id="petImg-Size" class="d-block imgSize rounded-circle"
									src="${pageContext.request.contextPath}/assets/image/lolozouai04.jpg"
									onerror="this.src='${pageContext.request.contextPath}/assets/image/lolozouai.jpg';">
								<div class="text-center petDefaultInfo">
									<h5><strong>등록된 반려견이 없습니다.</strong></h5>
									<br><br>
									<p>회원님의 소중한 아이를 등록해 주세요.</p>
								</div>
							</div>
						</c:when>

						<c:otherwise>
							<div class="row center-block">
								<div id="demo" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner rounded" id="petInfo-background">
										<!-- 슬라이드 쇼 -->

										<c:forEach items="${pList }" var="result" varStatus="status">
											<c:if test="${status.first}">
												<div class="carousel-item active">
													<img id="petImg-Size"
														class="d-block imgSize rounded-circle"
														src="${pageContext.request.contextPath}/dogshop/${result.dogImg}"
														alt="dogImg">
													<div class="carousel-caption d-none d-md-block">
														<div class="listSearch-info replaceInfo">

															<ul class="list-unstyled">
																<li>반려견 이름</li>
																<li><c:out value="${result.dogName}" /></li>
															</ul>

															<ul class="list-unstyled">
																<li>견종</li>
																<li><c:out value="${result.dogType}" /></li>
															</ul>

															<ul class="list-unstyled">
																<li>반려견 나이</li>
																<li><c:out value="${result.dogAge}" /></li>
															</ul>

												z			<ul class="list-unstyled">
																<li>반려견 몸무게</li>
																<li><c:out value="${result.dogWeight}" /></li>
															</ul>

															<ul class="list-unstyled">
																<li>반려견 특징 및 기타사항</li>
																<li><c:out value="${result.dogEtc}" /></li>
															</ul>

															<button type="button" class="btn btn-primary btn-sm"
																data-toggle="modal" data-target="#myModal1">수정</button>
														</div>
													</div>

													
													<!-- 인디케이터 끝 -->
												</div>
											</c:if>

											<c:if test="${status.index ne 0}">
												<div class="carousel-item">
													<img id="petImg-Size" class="d-block imgSize rounded-circle" src="${pageContext.request.contextPath}/dogshop/${result.dogImg}" alt="dogImg">
													<div class="carousel-caption d-none d-md-block">
														<div class="listSearch-info replaceInfo">
	
															<ul class="list-unstyled">
																<li>반려견 이름</li>
																<li><c:out value="${result.dogName}" /></li>
															</ul>
	
															<ul class="list-unstyled">
																<li>견종</li>
																<li><c:out value="${result.dogType}" /></li>
															</ul>
	
															<ul class="list-unstyled">
																<li>반려견 나이</li>
																<li><c:out value="${result.dogAge}" /></li>
															</ul>
	
															<ul class="list-unstyled">
																<li>반려견 몸무게</li>
																<li><c:out value="${result.dogWeight}" /></li>
															</ul>
	
															<ul class="list-unstyled">
																<li>반려견 특징 및 기타사항</li>
																<li><c:out value="${result.dogEtc}" /></li>
															</ul>
	
															<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal1">수정</button>
														</div>
													</div>
												</div>
											</c:if>
											
											
										</c:forEach>
										
										<!-- 왼쪽 오른쪽 화살표 버튼 -->
										<a class="carousel-control-prev" href="#demo" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span>
											<!-- <span>Previous</span> -->
										</a>
										
										<a class="carousel-control-next" href="#demo" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span>
										<!-- <span>Next</span> -->
										</a>
										<!-- / 화살표 버튼 끝 -->

<%-- 										<c:forEach items="${pList }" var="result" varStatus="status">
											<c:if test="${status.first}">

											<c:if test="${status.index ne 0}"> --%>



										<!-- 인디케이터 -->
										<ul class="carousel-indicators">

											<c:choose>
												<c:when test="${status.first }">
													<li data-target="#demo" data-slide-to="${pList }" class="active"></li>
												</c:when>
												
												<c:otherwise>
													<c:forEach var="pList" begin="0" end="${fn:length(pList)-1 }" step="1">
														<li data-target="#demo" data-slide-to="${pList }"></li>
													</c:forEach>
												</c:otherwise>
											</c:choose>
											
									
										</ul>
										<!-- 인디케이터 끝 -->
										
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
			





					<hr class="mb-4">

					<h4 class="mb-3 ml-2">방문내역</h4>

					<table class="table table-sm table-hover text-center">
						<thead>
							<tr>
								<th scope="col">강아지 이름</th>
								<th scope="col">매장명</th>
								<th scope="col">방문일</th>
								<th scope="col">몸무게</th>
								<th scope="col">비고</th>
								<th scope="col">리뷰</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>감자</td>
								<td>개님살롱</td>
								<td>2020-06-25</td>
								<td>3.2kg</td>
								<td>완료</td>
								<td>작성완료</td>
							</tr>

							<tr>
								<td>감자</td>
								<td>개님살롱</td>
								<td>2020-07-24</td>
								<td>3.0kg</td>
								<td>완료</td>
								<td>작성완료</td>
							</tr>

							<tr>
								<td>감자</td>
								<td>개님살롱</td>
								<td>2020-08-15</td>
								<td>3.4kg</td>
								<td>진행중</td>
								<td>
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-link btn-sm"
										data-toggle="modal" data-target="#myModal2">미작성</button>
								</td>
							</tr>
						</tbody>
					</table>

					<hr class="mb-4">

				</form>
			</div>
		</div>
	</div>
	<!-- // Page Content -->
	<!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->


	<!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>
	<!-- /.Footer -->


	<!-- Modal -->
	<!-- 애견 등록증 수정 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModal1Label" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModal1Label">마이펫 수정</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">

					<div id="petVisited-modal1">

						<ul class="list-unstyled">
							<li>이름</li>
							<li>호두</li>
						</ul>

						<ul class="list-unstyled">
							<li>몸무게</li>
							<li>3.2kg</li>
						</ul>

						<ul class="list-unstyled">
							<li>종류</li>
							<li>푸들</li>
						</ul>

						<ul class="list-unstyled">
							<li>나이</li>
							<li>23개월</li>
						</ul>

					</div>

					<img
						src="${pageContext.request.contextPath}/assets/image/lolozouai.jpg"
						class="img-responsive rounded" id="img-modal"
						alt="Responsive image">

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-danger btn-sm" onclick="location.href = '${pageContext.request.contextPath}/pet/'">삭제</button>
					<button type="button" class="btn btn-primary btn-sm" onclick="location.href = '${pageContext.request.contextPath}/pet/petModify'">수정</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 별점주기 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModal2Label" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModal2Label">개님살롱</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body text-center">
					<span class="star-input"> <span class="input"> <input
							type="radio" name="star-input" id="p1" value="0.5"><label
							for="p1">0.5</label> <input type="radio" name="star-input"
							id="p2" value="1"><label for="p2">1</label> <input
							type="radio" name="star-input" id="p3" value="1.5"><label
							for="p3">1.5</label> <input type="radio" name="star-input"
							id="p4" value="2"><label for="p4">2</label> <input
							type="radio" name="star-input" id="p5" value="2.5"><label
							for="p5">2.5</label> <input type="radio" name="star-input"
							id="p6" value="3"><label for="p6">3</label> <input
							type="radio" name="star-input" id="p7" value="3.5"><label
							for="p7">3.5</label> <input type="radio" name="star-input"
							id="p8" value="4"><label for="p8">4</label> <input
							type="radio" name="star-input" id="p9" value="4.5"><label
							for="p9">4.5</label> <input type="radio" name="star-input"
							id="p10" value="5"><label for="p10">5</label>
					</span> <output for="star-input">
							<b>0</b>점
						</output>
					</span>

					<hr class="mb-4">

					<div class="row">
						<div class="col-md-12 mb-3 text-left">
							<textarea class="form-control" rows="7" id="shopInfo"
								placeholder="내용을 입력해 주세요." required></textarea>
							<div class="invalid-feedback">내용을 입력해 주세요.</div>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal -->



	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- 캐러셀 -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<!-- 별점주기 -->
	<script>
		// star rating
		var starRating = function() {
			var $star = $(".star-input"), $result = $star.find("output>b");
			$(document).on("focusin", ".star-input>.input", function() {
				$(this).addClass("focus");
			}).on("focusout", ".star-input>.input", function() {
				var $this = $(this);
				setTimeout(function() {
					if ($this.find(":focus").length === 0) {
						$this.removeClass("focus");
					}
				}, 100);
			}).on("change", ".star-input :radio", function() {
				$result.text($(this).next().text());
			}).on("mouseover", ".star-input label", function() {
				$result.text($(this).text());
			}).on("mouseleave", ".star-input>.input", function() {
				var $checked = $star.find(":checked");
				if ($checked.length === 0) {
					$result.text("0");
				} else {
					$result.text($checked.next().text());
				}
			});
		};
		starRating();
	</script>
</body>

</html>