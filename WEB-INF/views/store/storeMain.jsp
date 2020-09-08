<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
  <title>매장 메인페이지</title>
   
  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Jquery Modal CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/jquery.modal.css" rel="stylesheet">

  <!-- Jquery UI CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/jquery-ui.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common2.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Jquery UI javaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/datepicker-ko.js"></script>

  <!-- custom javascript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>
</head> 

<body class="bg-light">
<!-- head -->
<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->
  
    <!-- 컨텐츠 -->
    <div class="container">
   

    </div>
    <!-- /. 컨텐츠 -->

  </main>
  <!-- /. main -->


<!-- footer -->
<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->


</body>

</html>
