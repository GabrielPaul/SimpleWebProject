<%-- 
    Document   : loginout
    Created on : 2016-12-8, 16:49:03
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>退出登录</title>
    </head>
    <body>
       <% session.removeAttribute( "buyerName");
       	  session.removeAttribute( "sellerName");
        response.sendRedirect("index");%>
    </body>
</html>
