<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">
footer {
	position: relative;
	padding-top: 40px;
	text-align:center;
	font-size: 0.7em;
	color:#000000;
}
</style>
</head>
<body>
<div class="footer">
<%!
  int num=0;
  synchronized void add(){
  num++;} 
 %>
 <%add(); %>
	<hr class="dash" />
	<p>您是本站第<%=num %>位访客！</p>
	<p>
		</p>
</div>
</body>
</html>
