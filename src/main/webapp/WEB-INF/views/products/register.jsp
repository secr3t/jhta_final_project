<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>상품 등록 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/abcompany/navi.jsp" %>
    <div id="body-container" class="container-fluid">     
        <div id="body-container-body">
        
			<div class="container">
			
				<h1>상품 등록 페이지</h1>
				<hr />
				
				<div class="alert alert-danger" id="error-message-box">
					<strong>Error!</strong> <span id="error-message"></span>
				</div>
			    
			    <!-- 상품 등록폼 -->
			    <form method="post" action="add.do" enctype="multipart/form-data" id="product-register-form">
				    <table class="table table-hover table-bordered">
				        <colgroup>
				            <col width="20%">
				            <col width="*%">
				        </colgroup>
			            <tbody>
			               <tr>
			                    <th>상품 패키지명</th>
			                    <td>
			                        <div class="form-group">
			                            <input type="text" class="form-control" name="packagename" id="product-name-input"/>
			                        </div>
			                    </td>
			                </tr>
			                <tr>
			                    <th>분류</th>
			                    <td>
			                        <div class="form-group">
			                            <select name="bigcategory" id="big-category">
			                                <option>대분류</option>
			                                <option value="100">식품</option>
			                                <option value="200">패션</option>
			                                <option value="300">가전</option>
			                            </select>
			                            <span>&gt;</span>
			                            <select name="middlecategory" id="middle-category">
			                                <option>중분류</option>
			                            </select>
			                            <span>&gt;</span>
			                            <select name="smallcategory" id="small-category">
			                                <option>소분류</option>
			                            </select>
			                        </div>
			                    </td>
			                </tr>
			                <tr>
			                    <th>배송비</th>
			                    <td>
			                        <input type="number" pattern="[0-9]*" class="form-control" min="0" max="2500" maxlength="4"  name="deliveryfee" id="delivery-input"/>
			                    </td>
			                </tr>
			                <tr>
			                    <th>상품 설명</th>
			                    <td>
			                        <div class="form-group">
			                            <textarea cols="5" rows="5" class="form-control" name="description" id="desciption-input"></textarea>
			                        </div>
			                    </td>
			                </tr>
			                <tr>
			                    <th>기업코드</th>
			                    <td>
			                        <select class="form-control" name="companyno" id="company-no">
			                            <option value="">1</option>
			                            <option>2</option>
			                        </select>
			                    </td>
			                </tr>
			                <tr>
			                    <th>할인률</th>
			                    <td>
			                        <input type="number" pattern="[0-9]*" class="form-control" min="0" max="99" maxlength="2" oninput="maxLengthCheck(this)" name="discountratio" id="discount-ratio"/>
			                    </td>
			                </tr>
			                <tr>
			                    <th>메인 이미지</th>
			                    <td>
			                        <input type="file" class="form-control" name="imagefile" />
			                    </td>
			                </tr>
			            </tbody>
				    </table>
				    <div class="text-right">
			        	<button type="submit" class="btn btn-success" id="register-btn">등록</button>
			        <a href="list.do" class="btn btn-primary">상품 목록</a>
			    	</div>
			    </form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
    $(function() {
    	
    	$("#error-message-box").hide();
    	
    	var productRegex = /^[가-힣a-zA-Z\s]{2,}$/;
    	
    	$("#product-register-form").submit(function () {
    		
    		if (!productRegex.test($("#product-name-input").val())) {
    			$("#error-message").text("상품명은 필수 입력 값입니다.");
    			$("#error-message-box").show();
    			return false;
    		}
    		/*
    		if(!$("#big-category").val()) {
    			$("#error-message").text("대분류를 선택해 주세요");
    			$("#error-message-box").show();
    			return false;
    		}
    		if(!$("#middle-category").val()) {
    			$("#error-message").text("중분류를 선택해 주세요");
    			$("#error-message-box").show();
    			return false;
    		}
    		if($("#small-category").val()) {
    			$("#error-message").text("소분류를 선택해 주세요");
    			$("#error-message-box").show();
    			return false;
    		}
    		*/
    		if (!$.trim($("#delivery-input").val())) {
     			$("#error-message").text("배송비를 기입해 주세요.");
     			$("#error-message-box").show();
     			return false;
     		}
    		if (!$.trim($("#desciption-input").val())) {
    			$("#error-message").text("상품 내용을 기입해 주세요");
    			$("#error-message-box").show();
    			return false;
    		}
    		if (!$.trim($("#discount-ratio").val())) {
    			$("#error-message").text("할인률을 기입해 주세요.");
    			$("#error-message-box").show();
    			return false;
    		}
    		return true;
    	});
    	
    	$("#big-category").change(function() {
    		
    		var bigCateNum = $("select[name=bigcategory] option:selected").val();
    		
    		$.ajax({
    			type:"GET",
    			url:"getMidCate.do",
    			data:{bigCateNum:bigCateNum},
    			dataType:"json",
    			success:function(midCategories) {
    				// console.log(middleCategories);
    				var html = "";
    				html += "<option>중분류</option>"
    				$.each(midCategories, function(index, midCategory) {
    					html += "<option value="+midCategory.id+">"+midCategory.name+"</option>";
    				});
    				$("#middle-category").html(html);
    			}
    		});
    	});
    	
    	$("#middle-category").change(function() {
    		var midCateNum = $("select[name=middlecategory] option:selected").val();
    		
    		$.ajax ({
    			type:"",
    			url:"getSmallCate.do",
    			data:{midCateNum: midCateNum},
    			dataType:"json",
    			success:function(smaCategories) {
    				console.log(smaCategories);
    			}
    		
    		});
    	});
         
    	
    	
           /* 
            var bigc = $(this).val();
            
            temp.children().remove();
            temp.append('<option value="">중분류</option>');
            
            tamp.children().remove();
            tamp.append('<option value="">소분류</option>');
            
            if(bigc == 'food'){
            temp.append('<option value="fruit">과일</option>');
            temp.append('<option value="vagitable">채소</option>');
            temp.append('<option value="meat">고기</option>');
            
            tamp.children().remove();
            tamp.append('<option value="">소분류</option>');
           }
           if(bigc == 'fassion'){
            temp.append('<option value="female">여성의류</option>');
            temp.append('<option value="male">남성의류</option>');
            temp.append('<option value="bag">가방</option>');
               
            tamp.children().remove();
            tamp.append('<option value="">소분류</option>');
           }
           if(bigc == 'appliance'){
            temp.append('<option value="ckichen">주방가전</option>');
            temp.append('<option value="life">생활가전</option>');
            temp.append('<option value="health">건강가전</option>');
               
            tamp.children().remove();
            tamp.append('<option value="">소분류</option>');
           }
          });
        
        $('select[name=middleCategory]').change(function() {
           var temp = $('select[name=smallCategory]');
            var midc = $(this).val();
            
            temp.children().remove();
            temp.append('<option value="">소분류</option>');

            if(midc == 'fruit'){
            temp.append('<option value="domestic">국산과일</option>');
            temp.append('<option value="import">수입과일</option>');
            temp.append('<option value="refre">냉동</option>');
            }
           if(midc == 'vagitable'){
            temp.append('<option value="cabbage">배추</option>');
            temp.append('<option value="herb">허브</option>');
            temp.append('<option value="salard">샐러드</option>');
           }
           if(midc == 'meat'){
            temp.append('<option value="pig">돼지고기</option>');
            temp.append('<option value="cow">소고기</option>');
            temp.append('<option value="chick">닭고기</option>');
           }
            
            if(midc == 'female'){
            temp.append('<option value="shirts">상의</option>');
            temp.append('<option value="pants">바지</option>');
            temp.append('<option value="skirt">치마</option>');
           }
           if(midc == 'male'){
            temp.append('<option value="shirts">상의</option>');
            temp.append('<option value="pants">바지</option>');
            temp.append('<option value="suits">정장</option>');
           }
           if(midc == 'bag'){
            temp.append('<option value="back">백팩</option>');
            temp.append('<option value="cross">크로스백</option>');
            temp.append('<option value="clutch">클러치백</option>');
           }
            
            if(midc == 'ckichen'){
            temp.append('<option value="pot">밥솥</option>');
            temp.append('<option value="oven">오븐</option>');
            temp.append('<option value="coffee">커피머신</option>');
           }
           if(midc == 'life'){
            temp.append('<option value="vaccum">청소기</option>');
            temp.append('<option value="tele">전화기</option>');
            temp.append('<option value="stand">스탠드</option>');
           }
           if(midc == 'health'){
            temp.append('<option value="massage">마사지기</option>');
            temp.append('<option value="skin">피부관리기</option>');
            temp.append('<option value="bidet">비데</option>');
           }
          });
         */
    });
    </script>
</html>