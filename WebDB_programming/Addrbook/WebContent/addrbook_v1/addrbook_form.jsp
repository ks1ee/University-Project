<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:작성화면</title>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />
</head>
<body>
<div align="center">
<H2>주소록:작성화면 </H2>
<HR>
<a href=addrbook_control.jsp?action=list>주소록 목록으로</a>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="action" value="insert">
	<div>이 름	<input type="text" name="ab_name" maxlength="15"></div>
    <div>email <input type="email" name="ab_email" maxlength="50"></div>
  	<div>전화번호 <input type="tel" name="ab_tel" maxlength="20"></div>
   	<div>생 일 <input type="date" name="ab_birth"></div>
  	<div>회 사 <input type="text" name="ab_comdept" maxlength="20"></div>
  	<div>메 모<input type="text" name="ab_memo"></div>
    <input type=submit value="저장"><input type=reset value="취소">
</form>

</div>
</body>
</html>