<%@page import="com.coo.point.PointDTO"%>
<%@page import="com.coo.point.PointDAO"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	Connection con = DBConnector.getConnection();
	
	PointDAO dao = new PointDAO();
	PointDTO dto = new PointDTO();
	
	dto.setNum(num);
	
	int result = dao.delete(con, dto);
	
	con.close();
	
	//성공하면 성공메세지 alert --> list 로
	//실패하면 바로 list 로
	if(result>0){
	request.setAttribute("result", result);
	request.setAttribute("path", "pointList.jsp");
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
		
	}else{
		
	response.sendRedirect("pointList.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>This is Delete Page!</h1>
	<h3><%=result %></h3>


</body>
</html>