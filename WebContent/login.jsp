<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="userDTO" class="user.UserDTO" scope="page"/>
<jsp:setProperty name="userDTO" property="id"/>
<jsp:setProperty name="userDTO" property="passwd"/>

<!DOCTYPE html>

<!-- 입력한 id, pw가 맞는지 확인-->
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<%
		String redirectUrl = "index.jsp";
	
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(userDTO.getId(), userDTO.getPasswd());
		
		if (result == 1) {
			session.setAttribute("userID", userDTO.getId());
			redirectUrl = "main.jsp";
		} 
		
		// result = 0, -1
		
		response.sendRedirect(redirectUrl);
	%>
	
</body>
</html>