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

	PointDTO pointdto = dao.selectOne(con, num);

	if (pointdto == null) {
		response.sendRedirect("pointList.jsp");
	} else {
		request.setAttribute("PointDTO", pointdto);
// 		dto.setName(request.getParameter("name"));
// 		dto.setKor(Integer.parseInt(request.getParameter("kor")));
// 		dto.setEng(Integer.parseInt(request.getParameter("eng")));
// 		dto.setMath(Integer.parseInt(request.getParameter("math")));
// 		dto.setSum(dto.getKor() + dto.getEng() + dto.getMath());
// 		dto.setAvg(dto.getSum() / 3.0);

		RequestDispatcher view = request.getRequestDispatcher("pointSelectResult.jsp");
		view.forward(request, response);
	}
%>

