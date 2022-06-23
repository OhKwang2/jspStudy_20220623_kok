<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
	String[] name = new String[5];
	String[] email = new String[5];
	
	String madeName(String name) {
		return name + "님";
	}
	
	String madeEmail(String email) {
		return email + "@google.com";
	}
%>
<%
		name[0] = "권오광";
		email[0] = "ohkwang5";
		name[1] = "권육광";
		email[1] = "ohkwang6";
		name[2] = "권칠광";
		email[2] = "ohkwang7";
		name[3] = "권팔광";
		email[3] = "ohkwang8";
		name[4] = "권구광";
		email[4] = "ohkwang9";
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="name" items="${name}" varStatus="status">
			<tr>
				<td>${status.index + 1 }></td>
				<td>${madeName(name[status.index]) }></td>
				<td>${madeEmail(email[status.index]) }</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>