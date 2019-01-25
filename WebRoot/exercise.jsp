<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exercise.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%!
  //返回99乘法表
  String print()
  {
      String s="";
      for(int i=1;i<=9;i++)
      {
          for(int j=1;j<=i;j++)
          {
             s+=i+"*"+j+"="+(i*j)+"    ";
          }
          s+="<br>";//追加换行标签
      }
      return s;
  } 
  //JSP内置out对象，使用脚本方式调用，打印乘法表
  void print2(JspWriter out)throws Exception
  {
      for(int i=1;i<=9;i++)
      {
          for(int j=1;j<=i;j++)
          {
             out.println(i+"*"+j+"="+i*j+"&nbsp&nbsp&nbsp&nbsp&nbsp");
          }     
          out.println("<br>");
           }
  }
  
   %>
  <h1>九九乘法表</h1>
  <%=print() %>
  <% print2(out); %>
  </body>
</html>
