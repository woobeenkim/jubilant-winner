<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <!-- 헤더 네비 -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
    <div class="container">
      <!-- 로고 -->
      <a class="navbar-brand" href="${pageContext.request.contextPath}/main/"><img src="${pageContext.request.contextPath}/assets/image/lettering-bright.png"></a>

      <div class="collapse navbar-collapse" id="navbarResponsive">
        <!-- 메인 네비 -->
        <ul class="navbar-nav">
          <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/store/${shopVo.shopDomain}/main/">홈</a></li>
          <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/store/${shopVo.shopDomain}/reservationform">예약하기</a></li>
        </ul>

        <!-- 회원 네비 -->
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
		          <li class="nav-item  active" ><a class="nav-link"	>${session.userName}님</a></li>
		          <c:if test="${shopVo.shopNo eq session.shopNo }">
		          	<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/store/${session.shopDomain}/store-reservation">매장관리</a></li>
		          </c:if>
		          <li class="nav-item"><a class="nav-link" href="#">회원정보</a></li>
		          <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/logout">로그아웃</a></li>
		        </ul>
			</c:otherwise>
		</c:choose>
      </div>
    </div>
  </nav>
  <!-- 헤더 네비 -->


  <!-- main -->
  <main role="main">

    <!-- 타이틀 -->
    <div class="jumbotron">
      <div class="container">
        <div class="row">
          <div class="col-md-2">
          	
          	<c:if test="${shopVo.shopLogo eq null }">
            	<img src="${pageContext.request.contextPath}/assets/image/title_img.png" class="rounded-circle btn-block mt-4">
            </c:if>
            
            <c:if test="${shopVo.shopLogo ne null }">
            	<img src="${pageContext.request.contextPath}/dogshop/${shopVo.shopLogo}" class="rounded-circle btn-block mt-4">
            </c:if>
            
          </div>
          <div class="col-md-10 title_fnt "style="color:black;">
            <h1 class="display-3 mt-4"><b>${shopVo.shopTitle }</b></h1>
            <div class="mt-2">
              <b>(매장 간략 소개글)</b> ${shopVo.shopDesc }
            </div>
            
            <c:if test="">
	             <!-- 타이틀 메뉴 -->
	            <div class="mt-4">
	              <a class="btn btn-primary" href="#" role="button">예약관리 &raquo;</a>
	              <a class="btn btn-secondary" href="#" role="button">정보수정 &raquo;</a>
	              <a class="btn btn-secondary" href="#" role="button">페이지 관리 &raquo;</a>
	              <!-- 토글 스위치 -->
	              <div class="toggleWrap">
	                <label class="switchTitle">검색 노출</label>
	                <label class="switch">
	                  <input type="checkbox">
	                  <span class="slider round"></span>
	                </label>
	              </div>
	              <!-- /. 토글 스위치 -->
	            </div>
	            <!-- /. 타이틀 메뉴 -->
	         </c:if>
          	
          </div>
        </div>
      </div>
    </div>
    <!-- /. 타이틀 -->
  