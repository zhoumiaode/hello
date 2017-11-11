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
 font-family:"方正姚体";
 font-color:black;
 }
 tr.ex2{
 font-size:35;
 font-family:"隶书";
 font-color:black;
 }
 tr.ex3{
 font-size:25;
 font-family:"华文琥珀";
 font-color:black;
 }
 tr.ex4{
 font-size:20;
 font-family:"方正姚体";
 font-color:black;
 }
</style>
<table border="1" width="100%"  height="100%"rules="none" cellspacing="2" cellpadding="0">
   <tr height="55" bgcolor="#0082e5" class="ex1"><td colspan="5" align="center">购买的水果</td></tr>
   <tr align="center" height="40" bgcolor="lightgrey" class="ex2">
       <td width="25%">水果名称</td>
       <td>价格(元/斤)</td>
       <td>数量</td>
       <td>总价格(元)</td>
       <td>移除(-1/次)</td>
   </tr>
   <% if(buylist==null||buylist.size()==0){ %>
   <tr height="150"  bgcolor="#999999" class="ex2"><td colspan="5" align="center">您未购买任何东西，购物车为空!</td></tr>
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
       <td><a href="docar.jsp?action=remove&name=<%=single.getName()%>">删除</a></td>
     </tr>
     <%
          }
        }
     %>
     <tr height="20" align="center" bgcolor="#999999" class="ex2"><td colspan="5">商品总价格:<%=total%></td></tr>
     <tr height="20" align="center" bgcolor="#C0D9D9" class="ex3">
        <td colspan="2"><a href="show.jsp">继续购物</a></td>
        <td colspan="3"><a href="docar.jsp?action=clear">清空购物车</a></td>
     </tr>
  </table> 