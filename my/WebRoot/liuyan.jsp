<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<head>
<style>
 body{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"����";
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
�û�����:<input type="text" name="author" size="31">
<br>
��������:<input type="text" name="title" size="31">
<br>
��������:<textarea name="content" rows="7" cols="30"></textarea><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="�ύ">
<input type="reset" value="����"><br>
<a href="show1.jsp">�鿴������Ϣ</a>
<a href="choose.jsp">����ģ��ѡ��</a>

</form>
</body>
</html>
