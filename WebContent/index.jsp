<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<link href="CSS/login_style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>:로그인</title>
</head>

<body>
<div class="header">
	<div class="header_main">
		<center>
			<img src="CSS/sox.jpg" width="350">
		</center>
	</div>
</div>

<div id="content">
	<fieldset>
		<form action="login.jsp" method="post">
			
			<div class="input_area">
				<input type="text" name="id" placeholder="아이디" maxlength="20" autocomplete="off">
			</div>
			
			<div class="input_area">
				<input type="password" name="passwd" placeholder="비밀번호" maxlength="15" autocomplete="off">
			</div>

			<div class="btn_area">
				<button type="submit" id="btn_box">로그인</button>
			</div>
			
			<div class="caption">
				<a href="">비밀번호 찾기</a>
			</div>
		</form>
	</fieldset>
</div>

</body>
</html>