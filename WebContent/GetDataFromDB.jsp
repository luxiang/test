<%@ page language="java" contentType="text/html;"
    pageEncoding="utf-8" errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.microsoft.sqlserver.jdbc.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>从MS数据库取数</title>
</head>
<body>
<%
           
    String sDriverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  
    //String sDBUrl ="jdbc:sqlserver://localhost:1433;databaseName=HuaRong";   
    String sDBUrl = application.getInitParameter("dburl");

    Class.forName(sDriverName);  
   	Connection conn = DriverManager.getConnection(sDBUrl, "sa", "noahark");  
   	
   	Statement sql = conn.createStatement();
   	ResultSet rs = sql.executeQuery("SELECT * FROM T_CC_Alias");
   	
   
%>

<table style="border:thin;color:black;">
<% while(rs.next())
{%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
	</tr>
	
<% }%>

</table>
</body>
</html>