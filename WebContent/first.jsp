<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" info="This is a jsp!" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%!
	public int count;

	public String info()
	{
		return "Hello";
	}
	
	public int i = 0;
%>
<body>
	<%-- JSP 注释啊 --%>
    <% out.print(count); %>
	<% out.print(info()); %>
	<%= info()%>
	<%= this.getServletInfo() %>
	<%
		application.setAttribute("Counter", String.valueOf(++i));
	%>
	
	<table>
	<% for(i =0; i <10; i++) 
	{
	%>
		<tr><td> <%=i%><td/><tr/>
    <%
    }
	%>
	</table>
</body>
</html>