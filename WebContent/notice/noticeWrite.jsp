<%@page import="com.coo.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
		

%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
#btn_right {
	float: right;
}

#contents {
	height: auto;
}

h2 {
	text-align: center;
}
#contents{
	min-height: 500px;

}

#bt_gp{
	margin-left: 160px;
}
</style>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>
	<% if(dto == null || dto.getLev() !=0) { 
		String msg = "꺼져";
		String path = "../index.jsp";
		request.setAttribute("msg", msg);
		request.setAttribute("path", path);
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}
	%>
	<div class="container">
		<h2>WRITE PAGE</h2>
		<form class="form-horizontal" action="noticeWriteResult.jsp" method="post" onsubmit=true>
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">TITLE</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" name="title">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">WRITER</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="writer" name="writer" value="<%=dto.getId()%>"
					readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">CONTENTS</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="contents" name="contents"></textarea>
				</div>
			</div>
		<!--**********************버튼그룹 -->
		<button type="submit" class="btn btn-info" id="btn_right">작성</button>
		</form>


	</div>
	
	<script type="text/javascript">
		$("#btn_right").click(function() {
			if ($("#title").prop("value")==""||$("#writer").prop("value")==""||$("#contents").prop("value")=="") {
				alert("빈칸없이 작성해 주세요");
				return false;}
		});
	
	</script>
	
</body>
</html>