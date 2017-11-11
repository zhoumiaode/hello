<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<head>
<style>
 body{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"隶书";
 font-color:black;
 position:absolute;
 top:200px;
 left:450px;
 right:200px;
 }
</style>
</head>
<body>
<form action="/my/WordServlet" method="post">
用户姓名:<input type="text" name="author" size="31">
<br>
反馈主题:<input type="text" name="title" size="31">
<br>
反馈内容:<textarea name="content" rows="7" cols="30"></textarea><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="提交">
<input type="reset" value="重置"><br>
<a href="show1.jsp">查看反馈信息</a>
<a href="choose.jsp">返回模块选择</a>

</form>
</body>
</html>
