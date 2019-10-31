<%@page import="com.coo.notice.NoticeDTO"%>
<%@page import="com.coo.notice.NoticeDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	Connection con = DBConnector.getConnection();
	NoticeDAO dao = new NoticeDAO();
	ArrayList<NoticeDTO> ar = dao.selectList(con);
	
	con.close();
%>
<!DOCTYPE html>
<html>
<head>
<title>Notice Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
	#btn_right{
	float: right;}
	h2{
		text-align: center;
		margin-bottom: 30px;
	}
	
	thead > th {
		font-weight: bold;
		font-size: 1.2em;
		
	}
	
</style>
</head>
</head>
<body>

	<div class="container">
		<h2>NOTICE</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < ar.size(); i++) {
						
						
						NoticeDTO dto = ar.get(i); %>
				<tr>
					<th><%= dto.getNum()%></th><th><a href="noticeSelect.jsp?num=<%=dto.getNum() %>"><%=dto.getTitle() %></a></th><th><%=dto.getWriter() %></th><th><%=dto.getReg_date() %></th><th><%=dto.getHit() %></th>
				</tr>

					<% }
				%>
			</tbody>
			
		</table>
		<!--**********************버튼그룹 -->
		
			<button type="button" class="btn btn-info" id="btn_right">글쓰기</button>
			
		
	</div>
<script type="text/javascript">
	$("#btn_right").click(function() {
		location.href="noticeWrite.jsp";
	});

</script>
</body>
</html>