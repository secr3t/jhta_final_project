<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>            
<link rel="stylesheet" href="/resources/css/detail.css">	
</head>
<body>
    <div class="container">
        <p><span class="glyphicon glyphicon-home"></span> 홈 <span class="glyphicon glyphicon-chevron-right"></span> 스포츠·자동차 <small><span class="glyphicon glyphicon-triangle-bottom"></span></small> <span class="glyphicon glyphicon-chevron-right"></span> 아웃도어 브랜드 <small><span class="glyphicon glyphicon-triangle-bottom"></span></small> <span class="glyphicon glyphicon-chevron-right"></span> 아웃도어의류 <small><span class="glyphicon glyphicon-triangle-bottom"></span></small></p>
    
        <div class="row">
            <div class="col-sm-4">
                <div class="row">
                    <img src="../images/44444.jpg" width="100%" height="300px" id="img1"/>   
                    <img src="../images/1241.jpg" width="100%" height="300px" id="img2"/>   
                </div>
                <div class="row text-center">
                    <img src="../images/44444.jpg" width="15%" height="50px" id="img11"/>
                    <img src="../images/1241.jpg" width="15%" height="50px" id="img21"/>
                </div>
            </div>
            <div class="col-sm-6">
                <a href="" class="btn btn-primary btn-sm fashion"> 패션겨울준비 적용상품 </a>
                <p>베스트오브 베스트!</p>
                <strong><h1>[겨울준비] 콜핑 1+1 ★
                    월동준비 128종 모음
                    기모바지부터~ 구스다운까지 !</h1></strong>
                <h4><del>84,000원</del></h4>
                <h3 id="d">9,900원</h3>
                <ul>
                    <li class="col-sm-6 text-right" id="lin">현재 <strong id="d">1,569</strong> 개</li>
                    <li class="col-sm-6" id="lin">남은시간 <strong id="back">7</strong>일</li>
                </ul>
                <small><span>상세옵션을 선택해 주세요. (1인당 최대 15개,<span id="d">20,000원이상 무료배송</span>)</span></small>
                
                <select class="form-control">
                  <option>상품명</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
                <select class="form-control">
                  <option>색상사이즈</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
                <hr>
                <div class="col-sm-1"></div>
                <div class="col-sm-3"><button class="btn btn-warning btn-lg" id="btn-buy">바로구매</button></div>
                <div class="col-sm-3"><button class="btn btn-warning btn-lg" id="btn-cart">카트담기</button></div>
                <div class="col-sm-2"><button class="btn btn-default btn-lg back" id="btn-zzim">찜하기</button></div>
                
            </div>
        </div>
        
        <hr>
        
        <div class="row mainbody">
        <nav class="navbar navbar-inverse mar" id="sc" style="min-width: 1153px;">
             <div class="container-fluid">
              <ul class="nav navbar-nav" id="sc" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">상품설명</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">상품문의()</a></li>
                <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">구매후기()</a></li>
                <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">환불교환/상품고시</a></li>
              </ul>
                
              </div>
            </nav>
            
            
        <div class="col-sm-9">
          
            <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <h4><strong>구매전 꼭 읽어주세요!</strong></h4>
                <img src="../images/shoes1.jpg">
                <img src="../images/shoes2.PNG">
                <div class="row bor">
                    <div class="col-sm-2"><img src="../images/ddddd.jpg" width="100%" /></div>
                    <div class="col-sm-10">
                        <h4><strong class="d">9,800원 이상 구매시 무료배송</strong><strong>상품입니다.</strong></h4>
                        <span>*9,800원 미만 구매시, <strong>배송비 2,500원</strong></span>
                    </div>
                </div>  
                <div class="row">
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#ssss" aria-controls="ssss" role="tab" data-toggle="tab" id="day">익일배송</a></li>
                        <li role="presentation"><a href="#dddd" aria-controls="dddd" role="tab" data-toggle="tab" id="free">무료배송</a></li>
                    </ul>
                    
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="ssss">
                            <div class="col-sm-2">
                                <img src="../images/dlrdlf.JPG" width="100%" />
                            </div>
                            <div class="col-sm-10">
                                
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="dddd">
                            <div class="col-sm-2">
                                <img src="../images/free.jpg" width="100%" />
                            </div>
                            <div class="col-sm-10">
                                
                            </div>
                        </div>
                    </div>
                </div>              
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">
                <h4><strong>상품에 대해 궁금한 점을 물어보세요.</strong></h4>
                <ul>
                    <li><sapn class="d">교환/환불 및 배송관련 문의는 고객센터 내 1:1문의하기</sapn>를 이용해주세요.</li>
                    <li>상품문의를 통한 취소나 환불, 반품 등은 처리되지 않습니다.</li>
                    <li>상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고없이 삭제됩니다.</li>
                </ul>
				<div class="row">
                  <div class="itemques">
                       <h4 class="quespro"><strong>상품 문의하기</strong><strong id="quesnum">147</strong></h4> 
                  </div>
                        <form id="search-form" class="form-inline pull-left" action="home.do">
                           <div class="col-sm-7">
                                <input type="hidden" name="pageNo" value="1">
                                <input type="hidden" name="rows" value="5">
                                <div class="form-group">
                                    <label class="sr-only">검색조건</label>
                                    <select class="form-control" name="opt" id="keyresult">
                                        <option value="title">제목</option>
                                        <option value="title-contents">제목+내용</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">키워드</label>
                                    <input type="text" class="form-control" id="keywordwidth" name="keyword" value="검색어를 입력하세요" />
                                </div>
                                <button type="submit" class="btn btn-basic" id="btn-search">검색</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#questions">문의하기</button>
                                <div class="modal fade" id="questions" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="exampleModalLongTitle"><strong>판매자에게 문의하기</strong></h4>
                                                <hr />
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                <h5 class="text-center">상품,배송,취소/반품,A/S등의 문의를 남겨주시면 판매자가 직접 답변을 드립니다</h5>
                                            </div>
                                            <div class="col-sm-12 modal-body well">
                                                <form method="post">
                                                    <div class="col-sm-10 form-group">
                                                        <div class="col-sm-2 text-center">
                                                            <label>상품명</label>
                                                        </div>
                                                            <input type="text" name="itemtitle" class="form-control" id="itemname" />
                                                    </div>
                                                    <div class="col-sm-10 form-group">
                                                        <div class="col-sm-2 text-center">
                                                            <label>이름</label>
                                                        </div>
                                                            <input type="text" name="writer" class="form-control" id="itemname" />
                                                    </div>
                                                    <div class="col-sm-10 form-group">
                                                        <div class="col-sm-2 text-center">
                                                            <label>제목</label>
                                                        </div>
                                                            <input type="text" name="title" class="form-control" id="itemname" />
                                                    </div> 
                                                    <div class="col-sm-10 form-group">
                                                        <div class="col-sm-2 text-center">
                                                            <label>내용</label>
                                                        </div>
                                                            <textarea rows="7" name="contents" class="form-control" id="itemname"></textarea>
                                                    </div> 
                                                    <div class="quescaution col-sm-12 col-sm-offset-1">
                                                        <span><strong>문의 시 유의해주세요!</strong></span>
                                                    </div>
                                                    <div>
                                                        <ul class="col-sm-10 col-sm-offset-1">
                                                            <li>회원간 직거래로 발생하는 피해에 대해 행쇼는 책임지지 않습니다</li>
                                                            <li>주민등록번호, 연락처 등의 정보는 타인에게 노출될 경우 개인정보 도용의 위험이 있으니 주의해 주시기 바랍니다</li>
                                                            <li>비방, 광고, 불건전한 내용의 글은 관리자에 의해 사전 동의없이 삭제될 수 있습니다</li>
                                                        </ul>
                                                    </div>
                                                    <hr />
                                                </form>
                                                <div class="modal-footer col-sm-10">
                                                    <button type="submit" class="btn btn-warning" data-dismiss="modal" id="registerok">등록</button>
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                                <button type="button" class="btn btn-default">내 문의하기</button>    
                                <button type="button" class="btn btn-default">전체 문의하기</button>    
                            </div>
                        </form>
                </div>              
                <hr />
                    <table class="table table-condensed qnaitems">
                       <colgroup>
                           <col width="50">
                           <col width="80">
                           <col width="300">
                           <col width="100">
                           <col width="80">
                       </colgroup>
                        <thead>
                            <tr class="qnatitle">
                                <th scope="col">번호</th>
                                <th scope="col">답변상태</th>
                                <th scope="col">제목</th>
                                <th scope="col">문의자</th>
                                <th scope="col">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>검토중</td>
                                <td><a href="#">신발이 엉망진창으로 왔는데요</a></td>
                                <td>kimn****</td>
                                <td>2017-11-09</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="row centerman">
                    <div class="btn-group">
                      <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-chevron-left"></span></button>
                      <button type="button" class="btn btn-default">1</button>
                      <button type="button" class="btn btn-default">2</button>
                      <button type="button" class="btn btn-default">3</button>
                      <button type="button" class="btn btn-default">4</button>
                      <button type="button" class="btn btn-default">5</button>
                      <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-chevron-right"></span></button>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="messages">
                <div class="row">
                    <table class="table table-condensed">
                    <colgroup>
                        <col width="5%">
                        <col width="*">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>등록일</th>
                            <th>추천수</th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td><a href="">이런글이런글</a></td>
                                <td>작성자</td>
                                <td>2017-11-08</td>
                                <td>7</td>
                            </tr>
                    </tbody>
                </table>
                </div>
                <div class="row centerman">
                    <div class="btn-group">
                      <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-chevron-left"></span></button>
                      <button type="button" class="btn btn-default">1</button>
                      <button type="button" class="btn btn-default">2</button>
                      <button type="button" class="btn btn-default">3</button>
                      <button type="button" class="btn btn-default">4</button>
                      <button type="button" class="btn btn-default">5</button>
                      <button type="button" class="btn btn-default"><span class="glyphicon glyphicon-chevron-right"></span></button>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane text-center" id="settings">
                <div class="btn-group btn-group-justified">
                  <a href="#" class="btn btn-default"><strong>환불·교환</strong><span class="caret"></span></a>
                  <a href="#" class="btn btn-default"><strong>상품고시</strong><span class="caret"></span></a>
                </div>
                <h3><strong>지금 바로 마이페이지에서</strong></h3>
                <h3><strong>클릭 한 번으로 간편하게 환불/교환하기</strong></h3>
                <a href="#" class="btn btn-default"><strong>환불/교환 신청</strong><span class="glyphicon glyphicon-triangle-right"></span></a>
            </div>
          </div>
            
    </div>
        <div class="line" id="scr">
            <div class="row">
                <h4><strong>옵션선택</strong></h4>
            </div>
            <div class="row hei">

                <select class="form-control nb">
                      <option>상품명</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                      <option>5</option>
                </select>
                <select class="form-control nb">
                      <option>사이즈</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                      <option>5</option>
                </select>

            </div>
            <div class="row">
                <p>총 상품금액</p><h3 class="text-right">0원</h3>
            </div>
            <div class="row">
                <button class="btn btn-default btn-lg btn-block nb">장바구니</button>
            </div>
            <div class="row">
                <button class="btn btn-primary btn-lg btn-block nb">구매하기</button>
            </div>
            <div class="row rig">
                <div class="row nbs" id="top">
                    <a href="#" class="btn btn-info" data-toggle="tooltip" title="맨위로"><span class="glyphicon glyphicon-triangle-top"></span></a>
                </div>
                <div class="row" id="bottom">
                    <a href="#scrollbottom" class="btn btn-info" data-toggle="tooltip" title="맨아래로"><span class="glyphicon glyphicon-triangle-bottom"></span></a>
                </div>
            </div>
        </div>  
    
    </div>
    
    
    </div>
    
</body>
<script>
    $(function() {
        $("#day").mouseenter(function() {
            $("#day").click();
        })
        $("#free").mouseenter(function() {
            $("#free").click();
        })
        
       $("#img2").hide(); 
        $("#img11").mouseenter(function() {
           $("#img1").show(); 
            $("#img11").css("border", "orange solid 2px");
            $("#img2").hide();
            $("#img21").css("border", "");
        });
        $("#img21").mouseenter(function() {
           $("#img2").show(); 
            $("#img21").css("border", "orange solid 2px");
            $("#img1").hide();
            $("#img11").css("border", "");
        });
    });
    
    $(function() {
        $("#btn-buy").click(function() {
            alert("상세옵션을 선택해 주세요.")
        });
        $("#btn-cart").click(function() {
            alert("상세옵션을 선택해 주세요.")
        });
    });
    $(window).scroll(function() {
        var sclTop = $(this).scrollTop();
        if(sclTop > 649) {
                $('#sc').css('position', 'fixed').css('top', '1px'); 
                $('#scr').css('position', 'fixed');
                $("#top").show();
                $("#bottom").show();
           } else {
              $('#sc').css('position', '').css('top', '');
              $('#scr').css('position', '');
              $("#top").hide();
               $("#bottom").hide();
           }
        
    })

</script>
</html>