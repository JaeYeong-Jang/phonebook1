<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
PhoneDao phoneDao = new PhoneDao();
List<PersonVo> personList = phoneDao.getPersonList();
//System.out.println(personList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	<p>입력한 정보 내역입니다.</p>

	<%
	for (int i = 0; i < personList.size(); i++) {
	%>
		<table border="1">

			<tr>
				<td>이름(<%=personList.get(i).getPresonId() + "번" %>)</td>
				<td><%=personList.get(i).getName() %></td>
			</tr>

			<tr>
				<td>핸드폰</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>

			<tr>
				<td>회사</td>
				<td><%=personList.get(i).getCompany() %></td>
			</tr>
			
			<%--해당하는 personId에 대한 삭제기능 링크 추가--%>
			<tr>
				<td><a href="./updateForm.jsp?id=<%=personList.get(i).getPresonId() %>">[수정]</a></td>
				<td><a href="./delete.jsp?id=<%=personList.get(i).getPresonId() %>">[삭제]</a></td>
			</tr>
		</table>
		<br>
	<%
	}
	%>
	<a href="http://localhost:8088/phonebook1/writeForm.jsp">추가번호 등록</a>
	
	
</body>
</html>