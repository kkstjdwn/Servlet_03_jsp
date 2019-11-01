<%@page import="com.coo.member.MemberDTO"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

MemberDTO dto = (MemberDTO)session.getAttribute("member");

MemberDAO dao = new MemberDAO();
Connection con =DBConnector.getConnection();
int result = dao.memberDelete(con, dto.getId());

String msg = "탈퇴 실패";
String path = "../index.jsp";
if(result>0){
	msg = "탈퇴 성공";
}
request.setAttribute("msg", msg);
request.setAttribute("path", path);
session.invalidate();
RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
view.forward(request, response);


%>
