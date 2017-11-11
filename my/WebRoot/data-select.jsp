
<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html;charset=gb2312"%>
<%
 String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
 String url="jdbc:sqlserver://localhost:1433;DatabaseName=database";
 String username="sa"; 
 String password="qw173974168";
 String sql="select * from [database].[dbo].[user]";
 Class.forName(driverClass);
 Connection conn=DriverManager.getConnection(url,username,password);
 Statement  stmt= conn.createStatement();
 ResultSet rs=stmt.executeQuery(sql);
 while(rs.next()){
      out.println("<table border='5' bordercolor='yellow' cellspacing='13' cellspadding='13'>");
	  out.println("<tr>");
	  out.println("<td>"+rs.getString(1)+"</td>");
	  out.println("<td>"+rs.getString(2)+"</td>");
	  out.println("<td>"+rs.getString(3)+"</td>");
	   out.println("</tr>");
	   out.println("</table>");
      
	}
	rs.close();
	stmt.close();
	conn.close();
 %>

  