<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.notice.NoticeDAO"%>
<%@page import="com.coo.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String writer = request.getParameter("writer");
	
	NoticeDTO dto = new NoticeDTO();
	
	dto.setContents(contents);
	dto.setTitle(title);
	dto.setWriter(writer);
	
	NoticeDAO dao = new NoticeDAO();
	Connection con = DBConnector.getConnection();
	int num = dao.insert(con, dto);
	
	
		String msg = "작성 실패";
		String path = "noticeList.jsp";
	if(num>0){
		msg = "작성 성공";
	}
		request.setAttribute("msg", msg);
		request.setAttribute("path", path);
		
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
		
		con.close();

%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

</body>
</html>