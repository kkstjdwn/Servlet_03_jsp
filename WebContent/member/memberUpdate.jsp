<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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

#pw_sp{
	font-size: 6px;
	color:rgba(255,0,0,0.7);
}
#re_sp{
	font-size: 6px;
	color:rgba(255,0,0,0.7);
}
</style>
</head>
<body>
<%@include file="../layout/nav.jsp" %>
<h2>회원 정보 수정</h2>
<div class="container">
		<form class="form-horizontal" action="memberUpdateResult.jsp" onsubmit=true>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id">ID</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="id"
						readonly="readonly" value="<%=dto.getId()%>">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="pw">PW</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pw" name="pw"><span id="pw_sp"></span>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="pw">PW-RE</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pw_re" name="pw_re"><span id="re_sp"></span>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="name" id="hit_lb">NAME</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="name" name="name"
						value="<%=dto.getName()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">EMAIL</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="email" name="email"
						value="<%=dto.getEmail() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="phone">PHONE</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="phone" name="phone"
						value="<%=dto.getPhone()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="lev">LEVEL</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="lev" name="lev"
						value="<%=dto.getLev() %>">
				</div>
			</div>
		<button type="submit" class="btn btn-warning" id="btn_right">완료</button>
		</form>
</div>
<script type="text/javascript">

	$("#pw").blur(function() {
		if (this.value.length<10) {
			$("#pw_sp").text("비밀번호는 10자 이상 입력해야 합니다.");
		}else{
			$("#pw_sp").empty();
		}
	});
	
	$("#pw_re").blur(function check() {
		if(this.value!=$("#pw").val()){
			$("#re_sp").text("입력한 비밀번호가 다릅니다.");
		}else{
			$("#re_sp").empty();
		}
	});
	$("#pw").blur(check());

</script>
</body>
</html>