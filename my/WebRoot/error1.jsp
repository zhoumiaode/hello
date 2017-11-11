<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <style type="text/css">
div{
background-image:url(image/bb.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"¿¬Êé";
 font-color:black;
 text-align:center;
 text-indent:80px;
 line-height:600px
 }
 div.ex1{
 font-size:3em;
 font-family:"¿¬Êé";
 font-color:black;
 text-align:center;
 position:absolute;
 left:500px;
 top:400px
 }
 </style>
 
    <div>µÇÂ¼ÃÜÂë´íÎó£¬ÇëÖØĞÂµÇÂ¼</div>
    <%
    String dengluURL = "http://localhost:8080/my/denglu.jsp";
    response.setHeader("Refresh","3;URL="+dengluURL); %>


  