<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功跳转</title>
</head>
<body>
	恭喜你
	<%=request.getAttribute("truename")%>
	注册成功
	<!-- 5秒后跳转到主页面 -->
	<%
		response.setHeader("Refresh", "5;URL=shopping.jsp");
	%>
	<br> 如果5秒没有反应，请点击这里
	<a href="shoppingCentre.jsp">go!</a>
</body>
</html>