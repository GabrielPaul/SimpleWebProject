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
