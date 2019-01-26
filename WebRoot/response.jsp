<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>
<%
response.setContentType("text/html;charset=utf-8");//设置响应MINI类型


out.println("<h1>response内置对象</h1>");
out.println("<br>");
//out.flush();
PrintWriter outter=response.getWriter();
outter.println("大家好，我是response对象生成的输出流OUTER对象");//提前于out.println;!!!!!!!!!!!
//请求重定向
//response.sendRedirect("request.jsp");//请求重定向
request.getRequestDispatcher("request.jsp").forward(request, response);
 %>