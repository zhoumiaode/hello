<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.yxq.valuebean.GoodsSingle" %>
<%  ArrayList goodslist=(ArrayList)session.getAttribute("goodslist");%>
<html>
<head>
<style>
td.ex1{
 font-size:35;
 font-family:"����";
 font-color:black;
 
 }
td.ex2{
 font-size:30;
 font-family:"����";
 font-color:black;
 height:50
 }
 td.ex3{
 font-size:25;
 font-family:"�����п�";
 font-color:black;
 
 }
 div{
 font-size:30;
 font-family:"����";
 font-color:black
 }
 tr.ex1{
 font-size:30;
 font-family:"����";
 font-color:black
 }
 
</style>
</head>
<body bgcolor="#747869">
<center>
<table border="1" width="100%" height="100%" rules="none" cellspacing="2" cellpadding="0">
  <tr height="70"><td colspan="3" align="center" bgcolor="#0082e5" class="ex1">ˮ����Ŀ��</td></tr>
  <tr align="center" height="30" bgcolor="lightgrey">
    <td class="ex2">ˮ������</td>
    <td class="ex2">�۸�(Ԫ/��)</td>
    <td class="ex2">����</td>
  </tr>
  <% if(goodslist==null||goodslist.size()==0){ %>
    <tr class="ex1"  height="100"><td colspan="3" align="center" >û����Ʒ����ʾ</td></tr>
  <%
     } 
     else{
        for(int i=0;i<goodslist.size();i++){
           GoodsSingle single=(GoodsSingle)goodslist.get(i);
   %>
   <tr height="50" align="center" border="1">
      <td bgcolor="#5efde6" class="ex3"><%=single.getName()%></td>
      <td bgcolor="#03ceb0" class="ex3"><%=single.getPrice()%></td> 
      <td bgcolor="##5e89e6" class="ex2"><a href="docar.jsp?action=buy&id=<%=i%>">����</a></td> 
   </tr>
   <%
         }
       }
   %>  
   <tr height="50">
      <td align="center" colspan="3" bgcolor="lightgrey" class="ex2">
      <a href="shopcar.jsp">�鿴���ﳵ</a>&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="choose.jsp">����ѡ��ģ��</a>
      </td>
   </tr>
   </table>
   </center>
   </body>
   </html>