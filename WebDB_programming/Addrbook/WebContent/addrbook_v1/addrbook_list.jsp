<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="java.util.*, gjavaweb.addrbook.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:목록화면</title>

</head>


<body>
<div align="center"> 
<H2>주소록:목록화면</H2>
<HR>
<form>
<a href="addrbook_form.jsp">주소록 등록</a><P>

		<table border="1">
			<tr><th>번호</th><th>이 름</th><th>전화번호</th><th>이메일</th><th>회 사</th><th>메 모</th></tr>
			
			<c:forEach items="${datas}" var="ab">
			  <tr>
			   <td><a href="addrbook_control.jsp?action=edit&ab_id=${ab.ab_id}">${ab.ab_id}</a></td>
				<td>${ab.ab_name}</td>
				<td>${ab.ab_tel}</td>
				<td>${ab.ab_email}</td>
				<td>${ab.ab_comdept}</td>
				<td>${ab.ab_memo}</td>
			  </tr>
			</c:forEach>
		</table>
</form>

</div>
</body>
</html>