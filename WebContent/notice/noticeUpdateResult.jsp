<%@page import="com.coo.notice.NoticeDTO"%>
<%@page import="com.coo.notice.NoticeDAO"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	
	Connection con = DBConnector.getConnection();
	NoticeDAO dao = new NoticeDAO();
	NoticeDTO noticedto =dao.selectOne(con, num);
	noticedto.setContents(contents);
	noticedto.setTitle(title);
	num = dao.update(con, noticedto);
	
	String msg = "수정 실패";
	String path = "noticeList.jsp";
	
	if(num>0){
		msg = "수정 성공";
		
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("path", path);
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPD-RES page</title>
</head>	
<body>
<h1>UPD-RES page</h1>
</body>
</html>
