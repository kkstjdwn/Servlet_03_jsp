<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Update page</h2>
		<form action="pointUpdateResult.jsp?num=<%=num%>" method="post" id = "frm_1" onsubmit="sendIt">
			<div class="form-group">
				<label for="name">NAME:</label> <input type="text"
					class="form-control" id="name" value="<%=name %>" placeholder="<%=name %>"
					name="name">
			</div>
			<div class="form-group">
				<label for="kor">KOR:</label> <input type="text"
					class="form-control" id="kor" value="<%=kor %>" placeholder="<%=kor %>"
					name="kor">
			</div>
			<div class="form-group">
				<label for="eng">ENG:</label> <input type="text"
					class="form-control" id="eng" value="<%=eng %>" placeholder="<%=eng %>"
					name="eng">
			</div>
			<div class="form-group">
				<label for="math">MATH:</label> <input type="text"
					class="form-control" id="math" placeholder="<%=math %>" value="<%=math %>"
					name="math">
			</div>
			
			<button type="submit" class="btn btn-default" id="btn_1">수정</button>
		</form>
	</div>
	<script type="text/javascript">
		var frm = document.getElementById("frm_1");
		var btn = document.getElementById("btn_1");
		btn.addEventListener("click", function() {
			if (!confirm("수정하시겠습니까?")) {
				frm.setAttribute("action", "");
				
			}
		});
		
	
	</script>
	
	</body>
</html>