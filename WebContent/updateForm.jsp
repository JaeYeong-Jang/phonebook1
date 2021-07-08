<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
PhoneDao phoneDao = new PhoneDao();

//id 값 추출
int personId = Integer.parseInt(request.getParameter("id"));
//System.out.println(personId);// --> 중간 확인

//dao에서 id에 대한 정보 가져오기
PersonVo personVo = phoneDao.getPerson(personId);
//System.out.println(personVo.toString());
//person + html
%>

<%-- http://localhost:8088/phonebook1/update.jsp?name=김재영&hp=010-1111-1111&company=02-1111-1111&id=6--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호 수정 화면</h1>
	<p>내용을 수정하려면 아래 항목을 수정하고 "수정" 버튼을 클릭하세요.</p>

	<form action="./update.jsp" method="get">
		
		이름(name) : <input type="text" name="name" value="<%=personVo.getName() %>"> <br>
		핸드폰(hp) : <input type="text" name="hp" value="<%=personVo.getHp() %>"> <br>
		회사(company) : <input type="text" name="company" value="<%=personVo.getCompany() %>"><br>
		<input type="hidden" name="id" value="<%=personVo.getPresonId() %>"> <br>
		<button type="submit">수정</button>
		
	</form>

</body>
</html>