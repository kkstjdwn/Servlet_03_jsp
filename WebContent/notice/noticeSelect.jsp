<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.notice.NoticeDTO"%>
<%@page import="com.coo.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	NoticeDAO dao = new NoticeDAO();
	NoticeDTO dto = new NoticeDTO();
	Connection con = DBConnector.getConnection();
	dto = dao.selectOne(con, num);
	
	String msg = "게시글로 이동합니다";
	String path = "noticeSelectResult.jsp";
	
	
	if(dto==null){
		msg = "잘못된 게시글입니다";
		path = "noticeList.jsp";
		request.setAttribute("msg", msg);
		request.setAttribute("path", path);
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
		
	}else{
		request.setAttribute("DTO", dto);
		RequestDispatcher view = request.getRequestDispatcher(path);
		view.forward(request, response);
		
	}

	con.close();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select page</title>
</head>
<body>
	<h1>S-page</h1>
</body>
</html>