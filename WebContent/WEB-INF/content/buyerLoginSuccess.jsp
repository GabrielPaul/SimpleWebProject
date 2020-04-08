<%-- 
 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆成功</title>
</head>
<body>
<s:debug/>
<br>
欢迎${sessionScope.buyerName},
登陆成功
<hr>
<br>
<a href="buyerViewOnselling">查看正在销售物品</a>
<br>
<a href="changeBuyerPass">修改买家登陆密码</a>
</body>
</html>

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录成功</title>
    </head>
    <body>
       <% session.removeAttribute( "buyerName");
        response.sendRedirect("index");%>
    </body>
</html>
