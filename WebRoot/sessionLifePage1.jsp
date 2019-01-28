<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sessionLifePage1.jsp' starting page</title>
    
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
  <%
  SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
  
  Date d=new Date(session.getCreationTime());
  session.setAttribute("username","admin");
  session.setAttribute("password", "123456");
  session.setAttribute("age", 20);
  //设置最大生存期限 单位：秒
  //session.setMaxInactiveInterval(10);
   %>		
session创建时间：<%=sdf.format(d) %><br>
sessionID:<%=session.getId() %><br>
从session获取用户名：<%=session.getAttribute("username")
%>
  <% 
  //session.invalidate();//销毁当前会话
  %>
  
  
<a href="sessionLifePage2.jsp" target="blank">跳转到page2</a>

  </body>
</html>
