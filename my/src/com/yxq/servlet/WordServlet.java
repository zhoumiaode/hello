package com.yxq.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.yxq.valuebean.WordSingle;
import com.yxq.toolbean.Mytools1;

public class WordServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String author=Mytools1.toChinese(request.getParameter("author"));
		String title=Mytools1.toChinese(request.getParameter("title"));
		String content=Mytools1.toChinese(request.getParameter("content"));
		String today=Mytools1.changeTime(new Date());
		
		WordSingle single=new WordSingle();
		single.setAuthor(Mytools1.changeHTML(author));
		single.setTitle(Mytools1.changeHTML(title));
		single.setContent(Mytools1.changeHTML(content));
		single.setTime(today);
		
		HttpSession session=request.getSession();
		ServletContext scx=session.getServletContext();
		ArrayList wordlist=(ArrayList)scx.getAttribute("wordlist");
		if(wordlist==null){
			wordlist=new ArrayList();
		}
		wordlist.add(single);
		scx.setAttribute("wordlist",wordlist);
		response.sendRedirect("show1.jsp");	
	}


}
