<%@page import="com.coo.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	NoticeDTO noticedto = (NoticeDTO)request.getAttribute("DTO");



%>
<!DOCTYPE html>
<html>
<head>
<title>S-R-page</title>
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
	margin-bottom: 25px;
}
#contents{
	min-height: 500px;

}

#bt_gp{
	margin-left: 17%;
	
}
</style>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>
	<div class="container">
		<h2>NOTICE S-R-page</h2>
		<form class="form-horizontal" action="/action_page.php">
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">TITLE</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" name="title"
						readonly="readonly" value="<%=noticedto.getTitle()%>">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="title" id="hit_lb">HIT</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hit" name="hit"
						readonly="readonly" value="<%=noticedto.getHit() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">WRITER</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="writer" name="writer"
						readonly="readonly" value="<%=noticedto.getWriter() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">CONTENTS</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="contents" name="contents"
						readonly="readonly"><%=noticedto.getContents() %></textarea>
				</div>
			</div>
		</form>

		<!--**********************버튼그룹 -->

<div id = "bt_gp">
		<%if(dto !=null && dto.getLev()==0) {%>
		<button type="button" class="btn btn-info">글쓰기</button>
		<%if(dto.getId().equals(noticedto.getWriter())) {%>
		<button type="button" class="btn btn-warning">수정</button>
		<button type="button" class="btn btn-danger">삭제</button>
		<%}} %>
		<button type="button" class="btn btn-primary" id="btn_right">목록</button>
</div>
	</div>
	<script type="text/javascript">
	
	var num = <%= noticedto.getNum() %>;
	
	$(".btn-warning").click(function() {
		location.href="noticeUpdate.jsp?num="+num;
	});
	
	
	
	$(".btn-primary").click(function() {
		location.href="noticeList.jsp";
	});
	
	$(".btn-info").click(function() {
		location.href="noticeWrite.jsp";
	});
	
	$(".btn-danger").click(function() {
		if (confirm("삭제하시겠습니까?")) {
		location.href="noticeDelete.jsp?num="+num;
		
		}
	});
	
</script>
</body>
</html>