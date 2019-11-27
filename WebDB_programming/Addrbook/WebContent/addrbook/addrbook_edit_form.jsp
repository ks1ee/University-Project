<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		function delcheck() {
			result = confirm("Do you really want to delete ?");
		
			if(result == true){
				document.form1.action.value="delete";
				document.form1.submit();
			}
			else
				return;
		}
	</script>
<meta charset="UTF-8">
<%@include file="inc_header.html" %>

<title>주소록 수정양식</title>
</head>
<body>
<h2>주소록::수정양식</h2>
<hr>
<a href="index.jsp">게시물 목록</a>
<form name="form1" action="addrbook_control.jsp" method="post">
	<input type="hidden" name="action" value="update">
	<input type="hidden" name="ab_id" value="${ab.ab_id}">
	<div>이름 <input type="text" name="ab_name" maxlength="15" value="${ab.ab_name}"></div>
	<div>email <input type="email" name="ab_email" maxlength="50" value="${ab.ab_email}"></div>
	<div>전화번호<input type="tel" name="ab_tel" maxlength="20" value="${ab.ab_tel}"></div>
	<div>생일<input type="date" name="ab_birth" value="${ab.ab_birth}"></div>
	<div>회사<input type="text" name="ab_comdept" maxlength="20" value="${ab.ab_comdept}"></div>
	<div>메모<input type="text" name="ab_memo" value="${ab.ab_memo}"></div>
	<input type="submit" value="수정">
	<input type="button" value="삭제" onClick="delcheck()">
</form>
</body>
</html>