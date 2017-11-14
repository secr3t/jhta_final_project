<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/login.css">
<script type="text/javascript" src="/resources/js/login.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="container">
        <img src="/resources/images/daum.png" alt="" class="center-block">
        <div class="col-md-6 col-md-offset-3">
            <form action="logincheck.do" method="post">
                <div class="form-group">
                    <input type="text" name="customername" class="form-control" placeholder="아이디(이메일)" id="customername-input">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="비밀번호" id="password-input">
                </div>
                <div class="form-group">
                    <label for="">
                    <input type="checkbox" name="auto-login" id="auto-login-checkbox" class="big-checkbox pull-left">
                    <label for="auto-login-checkbox" class="pull-left login-area">자동로그인</label>
                    </label>
                    <a href="" class="pull-right login-area"><span>아이디(이메일)/비밀번호 찾기<font style="font-size:24px; line-height: 24px; vertical-align:middle">&gt;</font>
                    </span></a>
                </div>
                <div class="form-group">
                    <button class="btn btn-lg btn-primary form-control" id="login-btn">
                        로그인
                    </button>
                </div>
                <hr>
                <div class="form-group">
                    <a href="register.do" class="btn btn-lg btn-default form-control">회원가입</a>
                </div>
            </form>
        </div>

    </div> 
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>