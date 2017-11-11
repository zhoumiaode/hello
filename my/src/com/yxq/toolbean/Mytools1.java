package com.yxq.toolbean;
import java.io.*;
import java.text.*;
import java.util.*;
public class Mytools1 {
	public static String changeHTML(String source){
		String changeStr="";
		changeStr=source.replace("&", "&amp;");
		changeStr=changeStr.replace(" ", "&nbsp;");
		changeStr=changeStr.replace("<", "&lt;");
		changeStr=changeStr.replace(">", "&gt;");
		changeStr=changeStr.replace("\r\n", "<br>");
		return changeStr;
	}
	public static String changeTime(Date data){
		    SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    return format.format(data);
	}
	public static String toChinese(String str){
		if(str==null)str="";
		try{
			str=new String(str.getBytes("ISO-8859-1"),"gb2312");
		}catch(UnsupportedEncodingException e){
			str="";
			e.printStackTrace();
		}
		return str;
	}
}
