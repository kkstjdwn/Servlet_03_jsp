<%@page import="com.coo.notice.NoticeDAO"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

	int num = Integer.parseInt(request.getParameter("num"));

	Connection con = DBConnector.getConnection();
	NoticeDAO dao = new NoticeDAO();
	
	num = dao.delete(con, num);
	
	request.setAttribute("num", num);
	RequestDispatcher view = request.getRequestDispatcher("noticeDeleteResult.jsp");
	view.forward(request, response);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
<h1>D-page</h1>
</head>
<body>

</body>
</html>