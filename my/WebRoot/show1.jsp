<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.yxq.valuebean.WordSingle" %>
<html>
<head>
<style>
 body{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:16;
 font-family:"宋体";
 font-color:black;
 text-align:center;
 line-height:30px
 }
 div{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"楷书";
 font-color:black;
 text-align:center;
 text-indent:28px;
 line-height:100px
 }
 div.ex1{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"楷书";
 font-color:black;
 text-align:center;
 text-indent:40px;
 line-height:400px
 }
</style>
</head>
<body>
<%
  ArrayList wordlist=(ArrayList)application.getAttribute("wordlist");
  if(wordlist==null||wordlist.size()==0)
      {
      %>
      <div>没有信息可显示!<br><a href="liuyan.jsp">返回上一级</a>
      </div>
  <%}else{
      for(int i=wordlist.size()-1;i>=0;i--){
         WordSingle single=(WordSingle)wordlist.get(i);   
%>
用户名:<%=single.getAuthor() %>
<p>
反馈时间:<%=single.getTime() %>
<p>
反馈主题:<%=single.getTitle()%> 
<p>
反馈内容:
<textarea rows="7" cols="30" readonly><%=single.getContent() %></textarea>
<a href="liuyan.jsp">我要反馈</a>
<hr width="100%">
<a href="choose.jsp">返回选择模块</a><br>
<%}%>
  <%}%>
 </body>
 </html>
