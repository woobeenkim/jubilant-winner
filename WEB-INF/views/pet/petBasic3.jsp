<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <title>마이펫</title>

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
     
</head>

<body class="bg-light">

<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->


  <!-- Page Content -->
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
          <li class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0"><a href="#">마이펫 관리</a></h6>
            </div>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-condensed">
            <div>
              <h6 class="my-0"><a href="#">자랑하기</a></h6>
            </div>
          </li>

        </ul>
      </div>
      <!-- /. Category -->

      <div class="col-md-10 order-md-2">
        <h4 class="mb-3 text-center">애견 등록증</h4>
        <form class="needs-validation center-block" novalidate >

          <div class="form-row text-right">
            <div class="col-12">
              <button id="btn-submit" class="btn btn-primary col-md-2" type="button" onclick = "location.href = '${pageContext.request.contextPath}/pet/petAdd'">추가하기</button>
            </div>
          </div>

          <div class="row center-block">

            <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false">
              <div class="carousel-inner">
                <!-- 슬라이드 쇼 -->
                <div class="carousel-item active">
                  <!--가로--> <img id="petImg-Size" class="d-block imgSize rounded-circle" src="${pageContext.request.contextPath}/assets/image/4444.jpg" alt="First slide">
                  <div class="carousel-caption d-none d-md-block">
                    <h5>강아지를 등록해 주세요.</h5>
                    <p>설명</p>
                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal1">
                      수정
                    </button>
                  </div>
                </div>

                <div class="carousel-item"><img id="petImg-Size" class="d-block imgSize rounded-circle" src="${pageContext.request.contextPath}/assets/image/5555.jpg" alt="Second slide">
                  <div class="carousel-caption d-none d-md-block">
                    <h5>강아지를 등록해 주세요.</h5>
                    <p>설명</p>
                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal1">
                      수정
                    </button>
                  </div>
                </div>
                <div class="carousel-item"> <img id="petImg-Size" class="d-block imgSize rounded-circle" src="${pageContext.request.contextPath}/assets/image/6666.jpg" alt="Third slide">
                  <div class="carousel-caption d-none d-md-block">
                    <h5>강아지를 등록해 주세요.</h5>
                    <p>설명</p>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal1">
                      수정
                    </button>
                  </div>
                </div>

                <!-- 왼쪽 오른쪽 화살표 버튼 -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <!-- <span>Previous</span> -->
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <!-- <span>Next</span> -->
                </a>
                <!-- / 화살표 버튼 끝 -->

                <!-- 인디케이터 -->
                <ul class="carousel-indicators">
                  <li data-target="#demo" data-slide-to="0" class="active"></li>
                  <!--0번부터시작-->
                  <li data-target="#demo" data-slide-to="1"></li>
                  <li data-target="#demo" data-slide-to="2"></li>
                </ul> <!-- 인디케이터 끝 -->
              </div>

            </div>

          </div>



          <hr class="mb-4">

          <h4 class="mb-3">방문내역</h4>

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
                  <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#myModal2">
                    미작성
                  </button>
                </td>
              </tr>
            </tbody>
          </table>

          <hr class="mb-4">

        </form>
      </div>
    </div>
  </div>
  <!-- /. Page Content -->


   
  <!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
  <!-- /.Footer -->


  <!-- Modal -->




  <!-- 애견 등록증 수정 -->
  <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="myModal1Label">마이펫 수정</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
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

            <img src="${pageContext.request.contextPath}/assets/image/lolozouai.jpg" class="img-responsive rounded" id="img-modal" alt="Responsive image">
            
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-primary">수정</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>


  <!-- 별점주기 -->
  <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2Label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" id="myModal2Label">개님살롱</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
              aria-hidden="true">&times;</span></button>
        </div>

        <div class="modal-body text-center">
          <span class="star-input">
            <span class="input">
              <input type="radio" name="star-input" id="p1" value="0.5"><label for="p1">0.5</label>
              <input type="radio" name="star-input" id="p2" value="1"><label for="p2">1</label>
              <input type="radio" name="star-input" id="p3" value="1.5"><label for="p3">1.5</label>
              <input type="radio" name="star-input" id="p4" value="2"><label for="p4">2</label>
              <input type="radio" name="star-input" id="p5" value="2.5"><label for="p5">2.5</label>
              <input type="radio" name="star-input" id="p6" value="3"><label for="p6">3</label>
              <input type="radio" name="star-input" id="p7" value="3.5"><label for="p7">3.5</label>
              <input type="radio" name="star-input" id="p8" value="4"><label for="p8">4</label>
              <input type="radio" name="star-input" id="p9" value="4.5"><label for="p9">4.5</label>
              <input type="radio" name="star-input" id="p10" value="5"><label for="p10">5</label>
            </span>
            <output for="star-input"><b>0</b>점</output>
          </span>

          <hr class="mb-4">

          <div class="row">
            <div class="col-md-12 mb-3 text-left">
              <textarea class="form-control" rows="7" id="shopInfo" placeholder="내용을 입력해 주세요." required></textarea>
              <div class="invalid-feedback">
                내용을 입력해 주세요.
              </div>
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
  <script src="../../js/main-aside.js"></script>

  <!-- 캐러셀 -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>

  <!-- 별점주기 -->
  <script>
    // star rating
    var starRating = function () {
      var $star = $(".star-input"), $result = $star.find("output>b");
      $(document).on("focusin", ".star-input>.input", function () {
        $(this).addClass("focus");
      }).on("focusout", ".star-input>.input", function () {
        var $this = $(this);
        setTimeout(function () {
          if ($this.find(":focus").length === 0) {
            $this.removeClass("focus");
          }
        }, 100);
      }).on("change", ".star-input :radio", function () {
        $result.text($(this).next().text());
      }).on("mouseover", ".star-input label", function () {
        $result.text($(this).text());
      }).on("mouseleave", ".star-input>.input", function () {
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