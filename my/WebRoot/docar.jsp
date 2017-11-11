<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.yxq.valuebean.GoodsSingle" %>
<%@ page import="com.yxq.toolbean.MyTools" %>
<jsp:useBean id="myCar" class="com.yxq.toolbean.ShopCar" scope="session"/>
<%

  String action=request.getParameter("action");
  if(action==null)
    action="";
  if(action.equals("buy")){
      ArrayList goodslist=(ArrayList)session.getAttribute("goodslist");
      int id=MyTools.strToint(request.getParameter("id"));
      GoodsSingle single=(GoodsSingle)goodslist.get(id);
      myCar.addItem(single);
      response.sendRedirect("show.jsp");
  }
  else if(action.equals("remove")){
    String name=request.getParameter("name");
    myCar.removeItem(name);
    response.sendRedirect("shopcar.jsp");
  }
  else if(action.equals("clear")){
    myCar.clearCar();
    response.sendRedirect("shopcar.jsp");
  }
  else{
  response.sendRedirect("show.jsp");
  }
  %>
  