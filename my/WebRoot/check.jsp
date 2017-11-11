<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<style type="text/css">
div{
background-color:#999999;
 height:100%;
 width:100%;
 font-size:34;
 font-family:"楷书";
 font-color:black;
 text-align:center;
 text-indent:28px;
 line-height:400px
 }
 div.ex1{
background-color:#C0D9D9;
 height:100%;
 width:100%;
 font-size:34;
 font-family:"楷书";
 font-color:black;
 text-align:center;
 text-indent:28px;
 line-height:400px
 }
</style>
</head>
<body>
  <%
request.setCharacterEncoding("GB2312");
String username = request.getParameter("Name");
String userpassword = request.getParameter("Password");
String dengluURL = "http://localhost:8080/my/denglu.jsp";
String chooseURL = "http://localhost:8080/my/choose.jsp";
if(username.equals("")|username.equals(" ")|userpassword.equals("")|userpassword.equals(" ")){
	response.setHeader("Refresh","2;URL="+dengluURL);%>
	<div><%out.println("登录信息有误，请重新登录！");%></div><% 
}else if(username.equals("Jack") && userpassword.equals("1234")){
	response.setHeader("Refresh","3;URL="+chooseURL);%>
	<div class="ex1"><%out.println(username+"欢迎登录，3秒后进入选择界面！");%></div>
<%}else{
	response.setHeader("Refresh","2;URL="+dengluURL);%>
	<div><%out.println("登录信息有误，请重新登录！");%></div>
<%}%></body>
</html>

  