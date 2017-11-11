<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
 <html>
 <head>
 <style type="text/css">
 body.ex1{
 background-image:url(image/a.jpg);
 background-repeat:no-repeat;
 background-size:cover;
 }
 h1{
 font-size:3em;
 font-family:"隶书";
 font-color:black
 }
 h3{
 font-size:1em;
 font-family:"宋体";
 font-color:white
 }
 </style>
 </head>
 <body class="ex1">
  <form action="servlet/dologin" name="dologin" method="post">
   <center>
   <br><br><br><br><h1>欢乐购用户登录</h1><br>
   <h3>姓名：<input type="text" name="name" maxlength="20"></h3>
   <h3>密码：<input type="password" name="password" maxlength="20"><h3><br>
   <input type="submit" value="提交">
   <input type="reset" value="重置">
   </center>
   </form>
   <body>
 </html>



