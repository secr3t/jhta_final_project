<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<script type="text/javascript" src="/resources/js/order.js"></script>
<link rel="stylesheet" href="/resources/css/order.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
    <div class="container">
        
        <h1 class="pd">주문/결제</h1>
        <div class="row spd">
            <div class="col-sm-2"><img src="../images/44444.jpg" width="90%" /></div>
            <div class="col-sm-10 ck"><h5><strong class="d">아기의 안전만 생각한 물티슈</strong> 상품을 주문합니다.</h5>
            <div><small class="gray">선택하신 상품의 가격과 옵션정보는 하단 주문상품 정보에서 확인하실 수 있습니다.</small></div>
            </div>
        </div>
        <h4 class="pd">배송지 정보</h4>
        <form action="/order/addOrder.do" method="post">
        <div class="row">
            <div class="col-sm-2 spds"><strong>배송지 선택</strong></div>
            <div class="col-sm-8 spd">
                 <select name="deliveryId" class="form-control">
                  <option value="29">고지니(경기도 구리시 교문동)</option>
                  <option value="30">2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
            </div>
            <div class="col-sm-2 btnposition">
                <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#deliaddr">새로운 주소</button>
                <div class="modal fade" id="deliaddr" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">우편번호 검색</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">                       
                            <div class="form-group">
                                <div id="address-package">
                                    <input type="text" maxlength="5" class="form-control postal-area" name="postalcode" id="postal-code" placeholder="우편번호" readonly/>
                                    <a href="" id="address-btn"	class="form-control  btn btn-default postal-area">주소검색</a>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="mainaddress" class="form-control"
                                    placeholder="주소" id="main-address">
                            </div>
                            <div class="form-group">
                                <input type="text" name="detailaddress" class="form-control"
                                    placeholder="상세 주소를 입력해 주세요" id="address-detail-input">
                            </div>                         
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="useadd" data-dismiss="modal">사용</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                      </div>
                    </div>
                  </div>
            </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 paddingtop"><strong>이름</strong></div>
            <div class="col-sm-10 inputline">
                <input type="text" class="form-control" name="name" id="name">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 paddingtop"><strong>연락처</strong></div>
            <div class="col-sm-10 inputline">
                <input type="text" class="form-control" name="phonenumber" id="phonenumber">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 paddingtop"><strong>주소</strong></div>
            <div class="col-sm-10 inputline">
                <input type="text" class="form-control" name="address" id="address" disabled>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 spds"><strong>배송메모</strong></div>
            <div class="col-sm-10 spd">
                <select class="form-control">
                  <option>부재 시 경비실에 맡겨주세요</option>
                  <option>배송전에 연락주세요</option>
                </select>
                <input type="text" name="memo"/>
            </div>
        </div>
        <h4 class="pd">할인 쿠폰/적립혜택</h4>
        <div class="row spd">
            <div class="col-sm-2"><strong>적용가능 쿠폰</strong></div>
            <div class="col-sm-10">딜전용 쿠폰 <strong class="d">0</strong>장&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>장바구니 쿠폰</span> <strong class="d">0</strong>장 <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#exampleModalLong">쿠폰적용</button>
            
            <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">쿠폰창</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                       <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="thefirst" value="option1" checked>
                            <img src="../images/thefirst.jpg" />
                          </label>
                          <span>&nbsp;&nbsp;&nbsp;<strong id="fir">0</strong>개</span>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="vvip" value="option2">
                            <img src="../images/vvip.jpg" />
                          </label>
                          <span>&nbsp;&nbsp;&nbsp;<strong id="vv">0</strong>개</span>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="vip" value="option3">
                            <img src="../images/vip.jpg" />
                          </label>
                          <span>&nbsp;&nbsp;&nbsp;<strong id="v">0</strong>개</span>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="gold" value="option4">
                            <img src="../images/gold.jpg" />
                          </label>
                          <span>&nbsp;&nbsp;&nbsp;<strong id="gol">0</strong>개</span>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="optionsRadios" id="silver" value="option5">
                            <img src="../images/silver.jpg" />
                          </label>
                          <span>&nbsp;&nbsp;&nbsp;<strong id="sil">0</strong>개</span>
                        </div>
                        
                  </div>
                  <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">적용</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                  </div>
                </div>
              </div>
            </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2 spd"><strong>쿠폰할인</strong></div>
            <div class="col-sm-10 spd"><strong class="d">0원</strong></div>
        </div>
        <div class="row">
            <div class="col-sm-2 spd"><strong>적립예정</strong></div>
            <div class="col-sm-10 spd">0원</div>
        </div>
        <h4 class="pd">주문상품 정보</h4>
        <div class="row">
            <div class="col-sm-5 song"><strong>상품정보</strong></div>
            <div class="col-sm-2 song"><strong>상품금액</strong></div>
            <div class="col-sm-2 song"><strong>할인금액</strong></div>
            <div class="col-sm-1 song"><strong>배송비</strong></div>
            <div class="col-sm-2 song"><strong>주문금액</strong></div>
        </div>
        <div class="row">
            <div class="col-sm-5 ck">
            <div class="col-sm-6">
                <img src="../images/44444.jpg" width="80%" />
            </div>
            <h5><strong>아기의 안전만 생각한 물티슈</strong></h5>
            <div><small class="sm">01. 아이엠물티슈 실버 10팩 &nbsp; 1개</small></div>
            </div>
            <div class="col-sm-2" id="blue"><h4>15,900원</h4></div>
            <div class="col-sm-2 kk"><strong>0원</strong></div>
            <div class="col-sm-1" ></div>
            <div class="col-sm-2 kk"><h3>15,900원</h3></div>
            
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-7"></div>
            <div class="col-sm-2">
                <div class="row"><h4><strong>상품금액</strong></h4></div>
                <div class="row"><h4><strong>할인금액</strong></h4></div>
                <div class="row"><h4><strong>배송비</strong></h4></div>
            </div>
            <div class="col-sm-3">
                <div class="row right"><h4><strong>15,900원</strong></h4></div>
                <div class="row right"><h4><strong>0원</strong></h4></div>
                <div class="row right"><h4><strong>0원</strong></h4></div>
            </div>
        </div>
        <hr>
        <div class="row right pd">
            <div class="col-sm-2">
                <h3>총 주문금액</h3>
            </div>
                <h4><strong>15,900원</strong></h4>
        </div>
        
         <h4 class="pd"><strong>결제수단</strong></h4>
         <div class="row spd">
            <div class="col-sm-2"><strong>결제 방법</strong></div>
            <div class="col-sm-6">
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>신용카드
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    휴대폰 결제
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    무통장 입금
                  </label>
                </div>
            </div>
            
                <div class="col-sm-4">
                    <h4>티몬캐쉬·적립금 사용</h4>
                
            
                     <div class="col-sm-8">
                         <input type="cash" class="form-control" id="Inputcash" placeholder="0">
                     </div>
                     <div class="col-sm-2">
                         원
                     </div>
                     <div class="col-sm-2">
                         <button class="btn btn-warning btn-sm">전액사용</button>
                     </div>
                </div>
            
        </div>
        <div class="row">
            <div class="col-sm-2">
                카드 종류
            </div>
            <div class="col-sm-6">
                <select class="form-control">
                  <option>신한</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-2">
                할부 기간
            </div>
            <div class="col-sm-6">
                <select class="form-control">
                  <option>일시불</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
            </div>
            
        </div>
        <hr>
        <h4 class="pd">약관 동의</h4>
        <div class="row">
           <div class="col-sm-8">
                <div class="row spd">

                        <h4><input type="checkbox" />&nbsp;&nbsp;<strong>전체 동의하기</strong></h4>

                </div>
                <div class="row">
                    <input type="checkbox" />&nbsp;&nbsp;개인정보 제3자 제공에 동의합니다.
                </div>
                <div class="row">
                    <input type="checkbox" />&nbsp;&nbsp;결제대행서비스 이용약관에 동의합니다.
                </div>
                <div class="row">
                    <input type="checkbox" />&nbsp;&nbsp;주문할 상품설명에 명시된 내용과 사용조건을 확인하였으며, 취소. 환불규정에 동의합니다.
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <div class="col-sm-6"><strong>총 상품금액</strong></div>
                    <div class="col-sm-6 text-right"><strong>15,900원</strong></div>
                </div>
                <div class="row">
                    <div class="col-sm-6"><strong>배송비</strong></div>
                    <div class="col-sm-6 text-right"><strong>0원</strong></div>
                </div>
                <div class="row">
                    <div class="col-sm-6"><strong>할인금액</strong></div>
                    <div class="col-sm-6 text-right"><strong>0원</strong></div>
                </div>
                <div class="row spd">
                    <div class="col-sm-6"><strong>적립금 사용</strong></div>
                    <div class="col-sm-6 text-right"><strong>0원</strong></div>
                </div>
                <div class="row">
                    <h4 class="d">총 결제금액</h4>
                </div>
                <div class="row text-right">
                   
                    <strong><h3 class="d">15,900 원</h3></strong>
                </div>
            </div>
        </div>
        </form>
    </div>       
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>