<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num = (int)request.getAttribute("num");

String msg = "삭제 성공";
String path = "noticeList.jsp";
if(num>0){
	request.setAttribute("msg", msg);
	request.setAttribute("path", path);
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
}else{
	response.sendRedirect(path);
	
}    
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete r-page</title>
</head>
<body>
<h1>D-R-page</h1>

</body>
</html>