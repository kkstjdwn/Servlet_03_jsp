<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.point.PointDAO"%>
<%@page import="com.coo.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	PointDTO pointdto = new PointDTO();
	pointdto.setName(request.getParameter("name"));
	pointdto.setKor(Integer.parseInt(request.getParameter("kor")));
	pointdto.setEng(Integer.parseInt(request.getParameter("eng")));
	pointdto.setMath(Integer.parseInt(request.getParameter("math")));
	pointdto.setSum(pointdto.getKor()+pointdto.getEng()+pointdto.getMath());
	pointdto.setAvg(pointdto.getSum()/3.0);
	
	PointDAO dao = new PointDAO();
	
	Connection con = DBConnector.getConnection();
	
	int result = dao.insert(con, pointdto);
	
	
	con.close();


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Result</title>
<script type="text/javascript">
	
	if (<%=result%> == 1) {
		alert("성공");
	}else{
		alert("실패");
	}
		location.href="pointList.jsp";

</script>	
</head>
<body>
<a href="../common/common_result.jsp/result=<%=result%>"></a>
</body>
</html>