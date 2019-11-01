<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.member.MemberDAO"%>
<%@page import="com.coo.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

MemberDTO dto = new MemberDTO();
dto.setId(request.getParameter("id"));
dto.setPw(request.getParameter("pw"));
dto.setEmail(request.getParameter("email"));
dto.setPhone(request.getParameter("phone"));
dto.setName(request.getParameter("name"));
dto.setLev(Integer.parseInt(request.getParameter("lev")));


MemberDAO dao = new MemberDAO();

Connection con = DBConnector.getConnection();

int result = dao.memberUpdate(con, dto);

String msg = "정보 수정 실패";
String path = "../index.jsp";

if(result>0){
	msg = "정보 수정 성공";
}

request.setAttribute("msg", msg);
request.setAttribute("path", path);
session.setAttribute("member", dto);
RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
view.forward(request, response);




%>
