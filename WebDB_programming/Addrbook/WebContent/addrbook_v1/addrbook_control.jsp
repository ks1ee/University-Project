<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  errorPage="addrbook_error.jsp" import="gjavaweb.addrbook.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dao" scope="application" class="gjavaweb.addrbook.AddrBookMemDAO"/> 
<jsp:useBean id="addrbook" class="gjavaweb.addrbook.AddrBook"/>
<jsp:setProperty name="addrbook" property="*"/> 
<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리
	// 주소록 목록 요청인 경우

	if(action.equals("list")) {
		List<addrBook> datas = dao.getDBList();
		request.setAttribute("datas",datas);
		pageContext.forward("addrbook_list.jsp");
	}
	// 주소록 등록 요청인 경우
	else if(action.equals("insert")) {		
		dao.insertDB(addrbook);
		response.sendRedirect("addrbook_control.jsp?action=list");
		}
	else if(action.equals("edit")){
		
	}
		
	
	// 주소록 수정 등록 요청인 경우
	else if(action.equals("update")) {
			dao.updateDB(addrbook); 
			response.sendRedirect("addrbook_control.jsp?action=list");
			}
			
	
	// 주소록 삭제 요청인 경우
	else if(action.equals("delete")) {
		dao.deleteDB(addrbook.getAb_id());
			response.sendRedirect("addrbook_control.jsp?action=list");
	}
		
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>