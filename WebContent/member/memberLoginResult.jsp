<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.member.MemberDAO"%>
<%@page import="com.coo.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = new MemberDAO();
	
	Connection con = DBConnector.getConnection();
	
	MemberDTO dto = dao.memberLogin(con, id, pw);
		
	String msg = "ID/PW가 일치하지 않습니다";
	//String path = "memberLoginForm.jsp?id="+id;
	String path = "../index.jsp";
	if(dto != null){
// 		msg = "로그인 성공";
// 		path = "../index.jsp";
		session.setAttribute("member", dto);
		response.sendRedirect(path);
	}else{
		request.setAttribute("msg", msg);
		request.setAttribute("path", path);
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}
	
	con.close();
	
// 	request.setAttribute("msg", msg);
// 	request.setAttribute("path", path);
// 	request.setAttribute("member", dto);
// 	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
// 	view.forward(request, response);
	
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 리절트</title>
</head>
<body>

</body>
</html>