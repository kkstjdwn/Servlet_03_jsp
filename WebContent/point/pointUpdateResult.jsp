<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.point.PointDAO"%>
<%@page import="com.coo.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	
	
	PointDTO dto = new PointDTO();
	dto.setNum(Integer.parseInt(request.getParameter("num")));
	dto.setName(request.getParameter("name"));
	dto.setKor(Integer.parseInt(request.getParameter("kor")));
	dto.setEng(Integer.parseInt(request.getParameter("eng")));
	dto.setMath(Integer.parseInt(request.getParameter("math")));
	dto.setSum(dto.getKor()+dto.getEng()+dto.getMath());
	dto.setAvg(dto.getSum()/3.0);
	
	PointDAO dao = new PointDAO();
	
	Connection con = DBConnector.getConnection();
	
	int result = dao.update(con, dto);
	
	
	con.close();


%>

<% 	request.setAttribute("result", result);
	request.setAttribute("path", "pointList.jsp");
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>



</body>
</html>