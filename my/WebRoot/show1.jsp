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
 font-family:"����";
 font-color:black;
 text-align:center;
 line-height:30px
 }
 div{
background-image:url(image/aa.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"����";
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
 font-family:"����";
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
      <div>û����Ϣ����ʾ!<br><a href="liuyan.jsp">������һ��</a>
      </div>
  <%}else{
      for(int i=wordlist.size()-1;i>=0;i--){
         WordSingle single=(WordSingle)wordlist.get(i);   
%>
�û���:<%=single.getAuthor() %>
<p>
����ʱ��:<%=single.getTime() %>
<p>
��������:<%=single.getTitle()%> 
<p>
��������:
<textarea rows="7" cols="30" readonly><%=single.getContent() %></textarea>
<a href="liuyan.jsp">��Ҫ����</a>
<hr width="100%">
<a href="choose.jsp">����ѡ��ģ��</a><br>
<%}%>
  <%}%>
 </body>
 </html>
