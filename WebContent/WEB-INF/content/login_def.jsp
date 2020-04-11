<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ page pageEncoding="utf-8" language="java" errorPage=""%>
<%
	String buyerName = (String) session.getAttribute("buyerName");
	String sellerName = (String) session.getAttribute("sellerName");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="3;url=http://www.baidu.com">
        <title>登录失败</title>
    </head>
    <body>
      登录失败!
    </body>
</html>
