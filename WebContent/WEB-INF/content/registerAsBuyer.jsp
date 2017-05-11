<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><s:text name="registerAsBuyer"></s:text></title>
</head>
<body>
<center>
注册为买家
<hr>
<s:form action="addBuyer">
	<s:textfield name="buyer.username" label="用户名"/>
	<s:password name="buyer.password" label="密码"/>
	<s:submit value="注册"/>
</s:form>
</center>
</body>
</html>