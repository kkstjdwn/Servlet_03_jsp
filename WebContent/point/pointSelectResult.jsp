<%@page import="com.coo.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PointDTO dto = (PointDTO)request.getAttribute("PointDTO"); 
	
// 	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
// 	view.forward(request, response);
%>
<html>
<head>
<meta charset="UTF-8">
<title>이름 눌러서 넘어온 페이지</title>
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
  	
  
  </style>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>국어</th>
					<th>영어</th>
					<th>수학</th>
					<th>합계</th>
					<th>평균</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><%=dto.getNum()%></th>
					<th><%=dto.getName()%></th>
					<th><%=dto.getKor()%></th>
					<th><%=dto.getEng()%></th>
					<th><%=dto.getMath()%></th>
					<th><%=dto.getSum()%></th>
					<th><%=dto.getAvg()%></th>
				</tr>





			</tbody>
		</table>
		<a href="pointList.jsp" id="btn">목록</a>
		<button class="btn btn-primary" id="upd">업데이트</button>
		<button class="btn btn-danger" id="del">삭제</button>
	</div>
<script type="text/javascript">
	var num = <%=dto.getNum()%>*1;
	var name = "<%=dto.getName()%>";
	var kor = <%=dto.getKor()%>;
	var eng = <%=dto.getEng()%>;
	var math = <%=dto.getMath()%>;
	$("#del").click(function() {
// 		if (confirm("삭제하시겠습니까?")) {
// 			location.href="pointDeleteResult.jsp?num="+num;
// 		}else{
// 			location.href="#";
			
// 		}
		
		location.href="pointDeleteResult.jsp?num="+num;
	});
	
	$("#upd").click(function() {
		location.href="pointUpdate.jsp?num="+num+"&name="+name+"&kor="+kor+"&eng="+eng+"&math="+math;
	});


</script>
</body>
</html>
