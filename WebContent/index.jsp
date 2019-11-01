<%@page import="com.coo.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>HOME</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
		
		
		
		
	}
	
	#id_div {
		padding-top:20%;
		width: 100%;
		height: auto;
		text-align: center;
		
	}
	
	#id_a{
		color: #66bbff;
		font-size: 50px;
		margin-bottom: 50px;
		text-decoration: none;
	}
	#id_a:hover{
		font-weight: bold;
		text-decoration: underline;
	}
	


</style>
</head>
<body>
<%@ include file="layout/nav.jsp" %>
<!-- 	<div id ="id_div"> -->
<!-- 	<a href="point/pointList.jsp" class = "id_a">Point List</a> -->
<!-- 	<br> -->
<!-- 	<a href="notice/noticeList.jsp" class = "id_a">Notice List</a> -->
<!-- 	<br> -->
<!-- 	<a href="member/memberJoin.jsp" class = "id_a">Member Join</a> -->
<!-- </div> -->
<div class="container" id="id_div">
<a href="" id="id_a">HOME</a>
<% if(dto!=null) {%>
<h1>로그인성공</h1>
<%}else{ %>
<h1>로그인 실패</h1>
<%} %>
</div>

</body>
</html>