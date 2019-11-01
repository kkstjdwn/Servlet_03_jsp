<%@page import="com.coo.member.MemberDTO"%>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("member");


%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/Servlet_03_jsp/index.jsp">HOME</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/Servlet_03_jsp/notice/noticeList.jsp">NOTICE</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="<%=request.getContextPath()%>/point/pointList.jsp">POINT</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <%if(dto==null) {%>
      <li><a href="<%=request.getContextPath()%>/member/memberJoin.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<%=request.getContextPath()%>/member/memberLoginForm.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    <%}else{ %>
      <li><a href="<%=request.getContextPath()%>/member/memberMypage.jsp"><span class="glyphicon glyphicon-user"></span> MyPage</a></li>
      <li><a href="<%=request.getContextPath()%>/member/memberLogout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	<%} %>
    </ul>
  </div>
</nav>