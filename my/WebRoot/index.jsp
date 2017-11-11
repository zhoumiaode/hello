<%@ page import="java.util.ArrayList"%>
<%@ page import="com.yxq.valuebean.GoodsSingle" %>
<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html;charset=gb2312"%>
<%
 String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
 String url="jdbc:sqlserver://localhost:1433;DatabaseName=database";
 String username="sa"; 
 String password="qw173974168";
 Class.forName(driverClass);
 Connection conn=DriverManager.getConnection(url,username,password);
 Statement  stmt= conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from [Shopping].[dbo].[Fruit]");
  ArrayList goodslist=new ArrayList();
  int i=0;
   while(rs.next()){
    GoodsSingle single=new GoodsSingle();
      single.setName(rs.getString("fruitname"));
	  single.setPrice(rs.getFloat("fruitprice"));
	  single.setNum(1);
	   goodslist.add(i,single);
	   i++;
	}
	rs.close();
	stmt.close();
	conn.close();
 %>
<%
         session.setAttribute("goodslist",goodslist);
		 response.sendRedirect("show.jsp");
%>
