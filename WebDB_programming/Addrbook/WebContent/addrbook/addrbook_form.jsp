<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="inc_header.html" %>

<title>주소록 등록양식</title>
</head>
<body>
<h2>주소록::등록양식</h2>
<hr>
<a href="addrbook_control.jsp?action=list">게시물 목록</a>
<form action="addrbook_control.jsp" method="post">
	<input type="hidden" name="action" value="insert">
	<div>이름 <input type="text" name="ab_name" maxlength="15"></div>
	<div>email <input type="email" name="ab_email" maxlength="50"></div>
	<div>전화번호<input type="tel" name="ab_tel" maxlength="20"></div>
	<div>생일<input type="date" name="ab_birth"></div>
	<div>회사<input type="text" name="ab_comdept" maxlength="20"></div>
	<div>메모<input type="text" name="ab_memo"></div>
	<input type="submit" value="등록">
	<input type="reset" value="취소">
</form>
</body>
</html>