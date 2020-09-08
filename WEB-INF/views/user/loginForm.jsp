<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="signHtml">

<head>

  <title>로그인폼</title>

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    
<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
 

</head>

<body class="signBody">

  <!-- Page Content -->
  <div class="container text-center">
    <form class="form-login" action="${pageContext.request.contextPath}/user/login" method="POST">
      <!-- Title -->
      <img class="mb-4" src="${pageContext.request.contextPath}/assets/image/lettering-dark.png" alt="" width="200">
      <!-- <h1 class="h3 mb-3 font-weight-normal">로그인</h1> -->

      <!-- <label for="inputEmail" class="sr-only">Email address</label> -->
      <input type="text" id="" class="form-control" placeholder="아이디" required autofocus name="id">
      <!-- <label for="inputPassword" class="sr-only">Password</label> -->
      <input type="password" id="" class="form-control" placeholder="패스워드" required name="password">

      <div class="checkbox mb-3 text-left">
        <label>
          <input type="checkbox" value="remember-me"> 자동 로그인
        </label>
      </div>

      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      <c:if test="${param.result eq 'fail'  }">
	  	<p class="txtDanger txtDanger dangerPwReNo text-center mt-2" style="color: red; font-size: 14px">아이디 또는 비밀번호가 일치하지 않습니다.</p>
      </c:if>
      <hr class="mb-4">

      <div><strong>다른 서비스 계정으로 로그인</strong></div><br>

      <div>
        <a href="https://www.facebook.com/" target="_blank"><img src="${pageContext.request.contextPath}/assets/image/facebook_logo.png">&nbsp&nbsp&nbsp</a>
        <a href="https://www.instagram.com/?hl=ko" target="_blank"><img src="${pageContext.request.contextPath}/assets/image/instagram_logo.png">&nbsp&nbsp&nbsp</a>
        <a href="https://www.google.com/webhp?hl=ko&sa=X&ved=0ahUKEwj50tfs4ZLrAhXYFIgKHRIyBaMQPAgH" target="_blank"><img src="${pageContext.request.contextPath}/assets/image/google_logo.png">&nbsp&nbsp&nbsp</a>
        <a href="https://twitter.com/?lang=ko" target="_blank"><img src="${pageContext.request.contextPath}/assets/image/twitter_logo.png"></a>
      </div>





      <p class="mt-5 mb-3 text-muted">PENTAGRAM &copy; 2020</p>
    </form>
  </div>
  <!-- /.container -->
  
  
</body>

</html>
