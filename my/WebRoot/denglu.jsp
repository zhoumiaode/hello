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
 font-family:"����";
 font-color:black
 }
 h3{
 font-size:1em;
 font-family:"����";
 font-color:white
 }
 </style>
 </head>
 <body class="ex1">
  <form action="servlet/dologin" name="dologin" method="post">
   <center>
   <br><br><br><br><h1>���ֹ��û���¼</h1><br>
   <h3>������<input type="text" name="name" maxlength="20"></h3>
   <h3>���룺<input type="password" name="password" maxlength="20"><h3><br>
   <input type="submit" value="�ύ">
   <input type="reset" value="����">
   </center>
   </form>
   <body>
 </html>



