<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>매장 고객 (공지사항)</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">

  <!-- Jquery Modal CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstarp/jquery/jquery.modal.css" rel="stylesheet">
  
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstarp/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstarp/js/common.js"></script>

</head> 

<body class="bg-light">

<!-- head -->
	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->

  
    <!-- 컨텐츠 -->
    <div class="container">
      
      <!-- 컨텐츠 제목 -->
      <div class="row mb-4">
        <div class="col-md-5"><h2>공지사항</h2></div>
        <div class="col-md-3"></div>
        <div class="col-md-3 pl-0 pr-0">
          <input class="form-control mr-sm-4" type="text" placeholder="Search" aria-label="Search">
        </div>
        <div class="col-md-1 pl-1 pr-3">
          <button class="btn btn-primary my-2 my-sm-0 btn-block" type="submit">검 색</button>
        </div>
      </div>
      <!-- /. 컨텐츠 제목 -->

      <!-- 컨텐츠 내용 -->
      <div class="row mb-5">
        <div class="col-md-12">
          <!-- 공지사항 -->
          <div class="row mb-2">
            <div class="col-md-12">
              <table class="table text-center">
                <colgroup>
                  <col width="5%">
                  <col width="60%">
                  <col width="15%">
                  <col width="10%">
                  <col width="10%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">제목</th>
                    <th scope="col">날짜</th>
                    <th scope="col">작성자</th>
                    <th scope="col">조회수</th>
                  </tr>
                </thead>
                <tbody>
                  	<c:forEach var ="i" begin="0" end="${fn:length(sMap.boardList)}">
                  		<c:if test="${i != fn:length(sMap.boardList) }">
                    		<tr><th scope="row">${i+1 }</th><td class="text-left px-5"><a href="#">${sMap.boardList[i].title }</a></td><td>${sMap.boardList[i].regdate }</td><td>운영자</td><td>${sMap.noticeList[i].hit }</td></tr>
                		</c:if>
                	</c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7 text-center">
              &lt; 1 2 3 4 5 &gt;
            </div>
            <div class="col-md-2"></div>
          </div>
      <!-- /. 컨텐츠 내용 -->

		<c:if test="${sMap.shopVo.shopNo eq session.shopNo }">
	      <!-- 컨텐츠 제목 (관리자) -->
	      <div class="row mb-3 mt-5">
	        <div class="col-md-12">
	          <h2>등록</h2>
	          <hr>
	        </div>
	      </div>
	      <!-- /. 컨텐츠 제목 (관리자) -->
	
	      <!-- 컨텐츠 내용 (관리자) -->
	      <form action="${pageContext.request.contextPath}/store/${session.shopDomain}/boardAdd" method="post">
		      <div class="row">
		        <div class="col-md-12">
		          <!-- 공지사항 제목 입력 -->
		          <div class="row mb-3">
		            <div class="col-md-1 pt-3">
		              <h6><b>제 목</b></h6>
		            </div>
		            <div class="col-md-11">
		              <input type="text" id="" name="title" class="form-control" placeholder="제목을 입력해주세요.">
		            </div>
		          </div>
		          <!-- 공지사항 내용 입력 -->
		          <div class="row mb-3">
		            <div class="col-md-1 pt-3">
		              <h6><b>내 용</b></h6>
		            </div>
		            <div class="col-md-11">
		              <textarea class="form-control border" name="content" rows="10" placeholder="내용을 입력해주세요."></textarea>
		            </div>
		          </div>
		
		          <div class="row">
		            <div class="col-md-8 pt-2"></div>
		            <div class="col-md-2"><input type="hidden" value="${param.menuNo }" name="menuNo"></div>
		            <div class="col-md-2"><button class="btn btn-primary btn-sm btn-block" type="submit" role="button">등 록</button></div>
		          </div>
		        </div>
		      </div>
		      <!-- /. 컨텐츠 내용 (관리자) -->
		
		      <!-- 컨텐츠 마무리 -->
		      <div class="row mb-2">
		        <div class="col-md-12">
		          <hr>
		        </div>
		      </div>
		      <!-- /. 컨텐츠 마무리 -->
	       </form>
		</c:if>
    <!-- /. 컨텐츠 -->
  </main>

<!-- footer -->
	<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->

</body>

</html>
