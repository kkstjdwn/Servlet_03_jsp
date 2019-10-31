<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.coo.point.PointDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	PointDAO dao = new PointDAO();
	Connection con = DBConnector.getConnection();
	
	ArrayList<PointDTO> ar = dao.selectList(con);
	
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  	#btn {
  		float: right;
  		background-color: #337ab7;
  		color: white;
  		height:34px;
  		font-size: 14px;
  		text-decoration: none;
  		margin-left: 20px;
  		border: 1px solid #0070c9;
  		border-radius: 10px;
  		text-align: center;
  		padding: 6px 12px;
  	}
  	#btn:hover{
  		color:white;
  		font-weight: bold;
  		background-color: #2e6da4;
  	}
  	a{
  		color : #0070c9;
  	} 
  </style>
<title>성적 목록</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr><th>번호</th><th>이름</th><th>국어</th><th>영어</th><th>수학</th><th>합계</th><th>평균</th></tr>
			</thead>
			<tbody>
				<%
					for(int i = 0; i < ar.size(); i++){
						
						PointDTO dto = ar.get(i);
				%>		
<!-- ********************************************아직 포문 -->
				<tr><th><%=dto.getNum() %></th><th><a href="pointSelect.jsp?num=<%= dto.getNum()%>"> <%= dto.getName()%> </a></th><th><%=dto.getKor() %></th><th><%=dto.getEng() %></th><th><%=dto.getMath() %></th><th><%=dto.getSum() %></th><th><%=dto.getAvg() %></th></tr>
				
				
				<%	}
				
				
				%>
			
			
			</tbody>
		</table>
		<a href="pointInsert.jsp" id="btn">추가</a>
	</div>

</body>
</html>