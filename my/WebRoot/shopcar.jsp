<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.yxq.valuebean.GoodsSingle" %>
<jsp:useBean id="myCar" class="com.yxq.toolbean.ShopCar" scope="session"/>
<%
   ArrayList buylist=myCar.getBuylist();
   float total=0;
%>
<style>
tr.ex1{
 font-size:40;
 font-family:"����Ҧ��";
 font-color:black;
 }
 tr.ex2{
 font-size:35;
 font-family:"����";
 font-color:black;
 }
 tr.ex3{
 font-size:25;
 font-family:"��������";
 font-color:black;
 }
 tr.ex4{
 font-size:20;
 font-family:"����Ҧ��";
 font-color:black;
 }
</style>
<table border="1" width="100%"  height="100%"rules="none" cellspacing="2" cellpadding="0">
   <tr height="55" bgcolor="#0082e5" class="ex1"><td colspan="5" align="center">�����ˮ��</td></tr>
   <tr align="center" height="40" bgcolor="lightgrey" class="ex2">
       <td width="25%">ˮ������</td>
       <td>�۸�(Ԫ/��)</td>
       <td>����</td>
       <td>�ܼ۸�(Ԫ)</td>
       <td>�Ƴ�(-1/��)</td>
   </tr>
   <% if(buylist==null||buylist.size()==0){ %>
   <tr height="150"  bgcolor="#999999" class="ex2"><td colspan="5" align="center">��δ�����κζ��������ﳵΪ��!</td></tr>
   <%
     }
     else{
       for(int i=0;i<buylist.size();i++){
         GoodsSingle single=(GoodsSingle)buylist.get(i); 
         String name=single.getName();
         float price=single.getPrice();
         int num=single.getNum();
         float money=((int)((price*num+0.05f)*10))/10f;
         total=total+money;
     %>
     <tr align="center" height="30" class="ex4" bgcolor="#999967">
       <td><%=name%></td>
       <td><%=price%></td>
       <td><%=num%></td>
       <td><%=money%></td>
       <td><a href="docar.jsp?action=remove&name=<%=single.getName()%>">ɾ��</a></td>
     </tr>
     <%
          }
        }
     %>
     <tr height="20" align="center" bgcolor="#999999" class="ex2"><td colspan="5">��Ʒ�ܼ۸�:<%=total%></td></tr>
     <tr height="20" align="center" bgcolor="#C0D9D9" class="ex3">
        <td colspan="2"><a href="show.jsp">��������</a></td>
        <td colspan="3"><a href="docar.jsp?action=clear">��չ��ﳵ</a></td>
     </tr>
  </table> 