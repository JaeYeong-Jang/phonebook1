<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%

PhoneDao phoneDao = new PhoneDao();

//request로 받아오기
int personId = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");

//Vo로 묶기
PersonVo personVo = new PersonVo(personId,name,hp,company);

//수정 하기
phoneDao.personUpdate(personVo);

//리스트 리다이렉트
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