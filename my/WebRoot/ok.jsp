<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

  <style type="text/css">
div{
background-image:url(image/b.gif);
 height:100%;
 width:100%;
 font-size:34;
 font-family:"����";
 font-color:black;
 text-align:center;
 text-indent:80px;
 line-height:600px
 }
 div.ex1{
 font-size:3em;
 font-family:"����";
 font-color:black;
 text-align:center;
 position:absolute;
 left:100px;
 top:600px
 }
 body{
 font-family:"����"
 }
 </style>
 <%!
 int num=0;
 synchronized void add(){
 num++;
 }%>
 <%add();%>
 <html>
 <body>
 ������������<%=num %>
    <div><%=session.getAttribute("username")%>,��ӭ����¼!5�����빦��ѡ��ҳ��!</div>
    <%
    String chooseURL = "http://localhost:8080/my/choose.jsp";
    response.setHeader("Refresh","20;URL="+chooseURL); %>
    </body>
    </html>


  