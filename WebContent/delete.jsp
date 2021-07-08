<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>



<%
	PhoneDao phoneDao = new PhoneDao();

	//파라미터 꺼내기 request.getparameter();
	int personId = Integer.parseInt(request.getParameter("id"));
	System.out.println(personId + "번id삭제");
	
	//PhoneDao.personDelete(id); 리 다이렉트 --> list출력
	phoneDao.personDelete(personId);
		
	//response.sendredirect();
	response.sendRedirect("./list.jsp");
	
%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>