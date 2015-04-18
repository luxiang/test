<%@ page language="java" contentType="text/html;" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>选择商品</title>
</head>
<body>
	<form id="form1" method="post" action="buy.jsp">
		用户名:<br/>
		<input type="text" name="name"><hr/>
		<select name="product">
			<option value="手表">手表</option>
			<option value="手机">手机</option>
		</select>
		${ 1+2}
		<input type="submit" value="提交" />
		<input type="reset" value="重置" />
	</form>
</body>
</html>