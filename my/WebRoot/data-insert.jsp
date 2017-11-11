
//插入数据到数据库//
<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html;charset=gb2312"%>
<%
 String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
 String url="jdbc:sqlserver://localhost:1433;DatabaseName=database";
 String username="sa"; 
 String password="qw173974168";
 Class.forName(driverClass);
 Connection conn=DriverManager.getConnection(url,username,password);
 Statement  stmt= conn.createStatement();
 String sql="insert into [Shopping].[dbo].[User](userID,username,userpassword)values(1005,'qw',10005)";
 if(stmt.executeUpdate(sql)==1){
  out.println("数据库操作成功");
 }else{
  out.println("数据库操作成功");
 }
 %>
