<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//int result = (Integer)(request.getAttribute("result"));
	String msg = (String) request.getAttribute("msg");
	String path = (String) request.getAttribute("path");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커먼요</title>
</head>
<body>
	<script type="text/javascript">
		var msg = "<%=msg%>";
		var path = "<%=path%>";
		
		alert(msg);
		location.href=path;			
		
	</script>



</body>
</html>