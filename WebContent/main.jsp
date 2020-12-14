<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% 	// 인증된 세션이 없는 경우
	if (session.getAttribute("userID") == null) {
		response.sendRedirect("logout.jsp");
	}
 %>    
<!DOCTYPE html>
<html>
<head>
	<link href="CSS/main_style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>로그인 된 페이지</title>
</head>
<body>
	<div class="header"> </div>
	<fieldset>
		<center>
			<h3> <%= session.getAttribute("userID") %>님 <small> 반갑습니다.</small> </h3>
	
			<a href="logout.jsp">로그아웃</a>
		</center>
	</fieldset>

</body>
</html>