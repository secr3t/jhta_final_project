<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/meronaform.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$(function(){
	    //전역변수
	    var obj = [];              
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "editor",
	        sSkinURI: "./resources/editor/SmartEditor2Skin.html",
	        htParams : {
	            // 툴바 사용 여부
	            bUseToolbar : true,            
	            // 입력창 크기 조절바 사용 여부
	            bUseVerticalResizer : true,    
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부
	            bUseModeChanger : true,
	        }
	    });
	    //전송버튼
	    $("#insertBoard").click(function(){
	        //id가 smarteditor인 textarea에 에디터에서 대입
	        obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
	        //폼 submit
	        $("#insertBoardFrm").submit();
	    });
	});
</script>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="container-fluid">           
        <div class="container-fluid">           
            <div class="container">
                <h3>올때 메로나</h3>            
                <form action="./insertMerona.do" method="post" id="insertBoardFrm" enctype="multipart/form-data">
                    <table class="table table-condensed meronaform">
                        <tbody>
                            <tr>
                                <th>구분</th>
                                <td>
                                    <select name="" id="">
                                        <option value="S">판매</option>
                                        <option value="B">구매</option>
                                    </select>
                                </td>
                                <th>카테고리</th>
                                <td class="category">
                                    <select name="bigcategory" id="">
                                        <option value="">====대분류====</option>
                                        <option value="europe">유럽</option>                                                                                
                                        <option value="asia">아시아</option>                                                                                
                                        <option value="namerica">북아메리카</option>                                                                                
                                        <option value="samerica">남아메리카</option>                                                                                
                                        <option value="oceania">오세아니아</option>                                                                                                
                                        <option value="africa">아프리카</option>                                                                                                
                                    </select>
                                    <select name="middlecategory" id="">  
                                        <option value="">====중분류====</option>                                        
                                    </select>
                                    <select name="smallcategory" id="">
                                        <option value="">====소분류====</option>                                                                        
                                    </select>
                                </td>
                                <th>희망가격</th>
                                <td class="hopeprice"><input type="number" name=""> 원</td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td colspan="5">
                                    <input type="text" name="title" class="titlei">
                                </td>
                            </tr>
                        </tbody>                        
                    </table>
                    
                    <textarea name="editor" id="editor" style="width: 100%; height: 400px;"></textarea>             
                          
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-info" id="insertBoard">등록</button>
                        <a href="home.do" class="btn btn-default">취소</a>
                    </div>

                </form>
            </div>      
        </div>
        
    </div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script>
	
    $(function() {       

        $("select[name='bigcategory']").change(function() {
            
            var bigcategory = $("select[name='bigcategory']").val();
            var $middlecategory = $("select[name='middlecategory']");

            $middlecategory.children().remove();
            $middlecategory.append("<option>====중분류====</option>");           

            if (bigcategory == "europe") {                
                $middlecategory.append("<option value='eeurope'>동유럽</option>");
                $middlecategory.append("<option value='weurope'>서유럽</option>");
                $middlecategory.append("<option value='seurope'>남유럽</option>");
                $middlecategory.append("<option value='neurope'>북유럽</option>");
            }
            if (bigcategory == "asia") {                
                $middlecategory.append("<option value='korea'>한국</option>");
                $middlecategory.append("<option value='japan'>일본</option>");
                $middlecategory.append("<option value='china'>중국</option>");
                $middlecategory.append("<option value='esasia'>동남아시아</option>");
                $middlecategory.append("<option value='wasia'>서아시아</option>");
            }
            if (bigcategory == "namerica") {                
                $middlecategory.append("<option value='usa'>미국</option>");
                $middlecategory.append("<option value='canada'>캐나다</option>");
                $middlecategory.append("<option value='mexico'>멕시코</option>");
            }
            if (bigcategory == "samerica") {                
                $middlecategory.append("<option value='brazil'>브라질</option>");
                $middlecategory.append("<option value='argentina'>아르헨티나</option>");
                $middlecategory.append("<option value='chile'>칠레</option>");                
            }
            if (bigcategory == "oceania") {                
                $middlecategory.append("<option value='aust'>호주</option>");
                $middlecategory.append("<option value='newz'>뉴질랜드</option>");                
            }
            if (bigcategory == "africa") {
                $middlecategory.append("<option value='nafrica'>북아프리카</option>");
                $middlecategory.append("<option value='safrica'>남아프리카</option>");                             
            }

            $(".category select[name='smallcategory']").children().remove();
            $(".category select[name='smallcategory']").append("<option>====소분류====</option>");

        });

        $("select[name='middlecategory']").change(function() {

            var middlecategory = $("select[name='middlecategory']").val();
            var $smallcategory = $(".category select[name='smallcategory']");

            $smallcategory.children().remove();
            $smallcategory.append("<option>====소분류====</option>");

            if (middlecategory == "eeurope") {
                $smallcategory.append("<option value='czech'>체코</option>");
                $smallcategory.append("<option value='poland'>폴란드</option>");
                $smallcategory.append("<option value='ukraine'>우크라이나</option>");
                $smallcategory.append("<option value='russia'>러시아</option>");
                $smallcategory.append("<option value='hungary'>헝가리</option>");
                $smallcategory.append("<option value='turkey'>터키</option>");
            }
            if (middlecategory == "weurope") {
                $smallcategory.append("<option value='germany'>독일</option>");
                $smallcategory.append("<option value='france'>프랑스</option>");
                $smallcategory.append("<option value='belgium'>벨기에</option>");
                $smallcategory.append("<option value='netherlands'>네덜란드</option>");
                $smallcategory.append("<option value='switzerland'>스위스</option>");
            } 
            if (middlecategory == "seurope") {
                $smallcategory.append("<option value='spain'>스페인</option>");
                $smallcategory.append("<option value='croatia'>크로아티아</option>");
                $smallcategory.append("<option value='portugal'>포르투갈</option>");
                $smallcategory.append("<option value='greece'>그리스</option>");
                $smallcategory.append("<option value='italy'>이탈리아</option>");
            } 
            if (middlecategory == "neurope") {
                $smallcategory.append("<option value='uk'>영국</option>");
                $smallcategory.append("<option value='denmark'>덴마크</option>");
                $smallcategory.append("<option value='sweden'>스웨덴</option>");
                $smallcategory.append("<option value='finland'>핀란드</option>");
                $smallcategory.append("<option value='norway'>노르웨이</option>");
            }

            if (middlecategory == "korea") {
                $smallcategory.append("<option value='jeju'>제주도</option>");
                $smallcategory.append("<option value='seoul'>서울</option>");
                $smallcategory.append("<option value='busan'>부산</option>");
                $smallcategory.append("<option value='daejean'>대전</option>");
                $smallcategory.append("<option value='gwangju'>광주</option>");
                $smallcategory.append("<option value='daegu'>대구</option>");
            }
            if (middlecategory == "japan") {
                $smallcategory.append("<option value='tokyo'>도쿄</option>");
                $smallcategory.append("<option value='osaka'>오사카</option>");
                $smallcategory.append("<option value='fucuoka'>후쿠오카</option>");
                $smallcategory.append("<option value='nagoya'>나고야</option>");
                $smallcategory.append("<option value='sapporo'>삿포로</option>");
            } 
            if (middlecategory == "china") {
                $smallcategory.append("<option value='beijing'>베이징</option>");
                $smallcategory.append("<option value='shanghai'>상하이</option>");
                $smallcategory.append("<option value='guangzhou'>광저우</option>");
                $smallcategory.append("<option value='hongma'>홍콩·마카오</option>");
                $smallcategory.append("<option value='taiwan'>대만</option>");
            } 
            if (middlecategory == "esasia") {
                $smallcategory.append("<option value='thailand'>태국</option>");
                $smallcategory.append("<option value='vietnam'>베트남</option>");
                $smallcategory.append("<option value='philippines'>필리핀</option>");
                $smallcategory.append("<option value='indonesia'>인도네시아</option>");                
            }
            if (middlecategory == "wasia") {
                $smallcategory.append("<option value='india'>인도</option>");
                $smallcategory.append("<option value='uae'>UAE</option>");
                $smallcategory.append("<option value='saudi'>사우디아라비아</option>");
                $smallcategory.append("<option value='iraq'>이라크</option>");                
            }

            if (middlecategory == "usa") {
                $smallcategory.append("<option value='newyork'>뉴욕</option>");
                $smallcategory.append("<option value='washington'>워싱턴</option>");
                $smallcategory.append("<option value='la'>로스엔젤레스</option>");
                $smallcategory.append("<option value='san'>샌프란시스코</option>");
                $smallcategory.append("<option value='chicago'>시카고</option>");                
            } 
            if (middlecategory == "canada") {
                $smallcategory.append("<option value='ottawa'>오타와</option>");
                $smallcategory.append("<option value='montreal'>몬트리올</option>");
                $smallcategory.append("<option value='vancouver'>벤쿠버</option>");
                $smallcategory.append("<option value='toronto'>토론토</option>");                
            } 
            if (middlecategory == "mexico") {
                $smallcategory.append("<option value='mexicocity'>멕시코시티</option>");
                $smallcategory.append("<option value='monterrey'>몬테레이</option>");
                $smallcategory.append("<option value='merida'>메리다</option>");                
            }

            if (middlecategory == "brazil") {
                $smallcategory.append("<option value='brazilia'>브라질리아</option>");
                $smallcategory.append("<option value='rio'>리우</option>");
                $smallcategory.append("<option value='sao'>상파울루</option>");               
            }
            if (middlecategory == "argentina") {
                $smallcategory.append("<option value='buenos'>부에노스아이레스</option>");
                $smallcategory.append("<option value='cordoba'>코르도바</option>");                
            }

            if (middlecategory == "aust") {
                $smallcategory.append("<option value='sydney'>시드니</option>");
                $smallcategory.append("<option value='melbourne'>멜버른</option>");
                $smallcategory.append("<option value='canberra'>캔버라</option>");
                $smallcategory.append("<option value='brisbane'>브리즈번</option>");                
            } 
            if (middlecategory == "newz") {
                $smallcategory.append("<option value='northi'>북섬</option>");
                $smallcategory.append("<option value='southi'>남섬</option>");                
            }

            if (middlecategory == "nafrica") {
                $smallcategory.append("<option value='egypt'>이집트</option>");
                $smallcategory.append("<option value='eth'>에티오피아</option>");                
            }
            if (middlecategory == "safrica") {
                $smallcategory.append("<option value='sar'>남아프리카공화국</option>");                             
            }
        });                  
        

    })
</script>
</html>