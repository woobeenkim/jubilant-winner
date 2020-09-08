<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    
    
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