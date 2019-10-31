<%@page import="com.coo.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.coo.notice.NoticeDAO"%>
<%@page import="com.coo.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	NoticeDAO dao = new NoticeDAO();
	Connection con = DBConnector.getConnection();
	NoticeDTO dto =dao.selectOne(con, num);
	
	request.setAttribute("num", dto.getNum());
	request.setAttribute("reg_date", dto.getReg_date());
	
	
	con.close();

%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
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
</style>
</head>
<body>

	<div class="container">
		<h2>UPDATE</h2>
		<form class="form-horizontal" action="noticeUpdateResult.jsp" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="title">TITLE</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title" name="title"
						value="<%=dto.getTitle()%>">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="hit" id="hit_lb">HIT</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="hit" name="hit"
						readonly="readonly" value="<%=dto.getHit() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="writer">WRITER</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="writer" name="writer"
						readonly="readonly" value="<%=dto.getWriter() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="contents">CONTENTS</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="contents" name="contents"><%=dto.getContents() %></textarea>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="num">NUM</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="num" name="num"
						readonly="readonly" value="<%=dto.getNum() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="reg_date">DATE</label>
				<div class="col-sm-10">
				<input type="text" class="form-control" id="reg_date" name="reg_date"
						readonly="readonly" value="<%=dto.getReg_date() %>">
				</div>
			</div>
		<!--**********************버튼그룹 -->
		<button type="submit" class="btn btn-warning" id="btn_right">수정</button>
		</form>


		
		

	</div>

</body>
</html>