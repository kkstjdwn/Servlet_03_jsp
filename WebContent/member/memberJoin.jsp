<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="../layout/nav.jsp" %>
<div class="container">
  <h2>Member Join Page</h2>
  <form action="./memberJoinResult.jsp" method="post">
    <div class="form-group">
      <label for="id">Id:</label>
      <input type="text" required="required" class="form-control" id="id" placeholder="Enter id" name="id">
      
    </div>
    <div class="form-group">
      <label for="pw">Password:</label>
      <input type="password" required="required" class="form-control" id="pw" placeholder="Enter password" name="pw">
    </div>
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" required="required" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" required="required" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="tel" required="required" class="form-control" id="phone" placeholder="Enter phone" name="phone">
    </div>
    <button type="submit" class="btn btn-default">회원가입</button>
  </form>
</div>


</body>
</html>