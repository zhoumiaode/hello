package com.yxq.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import com.yxq.servlet.DBconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yxq.valuebean.user;

public class dologin extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String driverClass = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String user = "sa";
        String pwd = "qw173974168";
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Shopping";	
		Connection con=null;
		PreparedStatement pst = null;
		Statement st = null;
		ResultSet rs= null;

		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
	    String path=request.getContextPath();
	    System.out.println(path);
		String username=request.getParameter("name");
	     byte  b[]=username.getBytes("ISO-8859-1");
	     username=new String(b);
	     String password=request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		String dengluURL = "http://localhost:8080/my/denglu.jsp";
		String chooseURL = "http://localhost:8080/my/choose.jsp";
		if(username.equals("")|username.equals(" ")|password.equals("")|password.equals(" ")){
			
			response.sendRedirect(path+"/error3.jsp");

		}else{
			DBconnect dbcon = new DBconnect(driverClass,url,pwd,user);
			try{
				con = dbcon.getConnection();
				 System.out.println("连接成功");
				 String sql = "select userpassword from [Shopping].[dbo].[User] where username=?";
				 pst = con.prepareStatement(sql);
				 pst.setString(1,username);
				 rs=pst.executeQuery();
				 String strpwd=null;
				 while(rs.next()){
					  strpwd=rs.getString("userpassword");
				 }
				 if(strpwd!=null){
					 if(strpwd.equals(password)){
						 user Tuser = new user();
						 Tuser.setName(username);
						 Tuser.setPassword(password);
						 HttpSession session = request.getSession();
						 session.setAttribute("username", username);
						 response.sendRedirect(path+"/ok.jsp");
					 }else{
						 response.sendRedirect(path+"/error1.jsp");
					 }
				 }else{
					 response.sendRedirect(path+"/error2.jsp");
					
				 }
			}catch(Exception e){
				e.printStackTrace();
			}
		}

	}

}
