
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; " pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购买商品汇总</title>
</head>
<body>
<%
Enumeration<String> headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements())
{
	String headerName = headerNames.nextElement();
	out.println(headerName + "-->" + request.getHeader(headerName) + "<br/>");
}
request.setCharacterEncoding("utf-8");

%>

您的名字：<%= request.getParameter("name") %><br/>
您购买的商品：<%= request.getParameter("product") %>
</body>
</html>