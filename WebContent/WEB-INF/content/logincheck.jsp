<%-- 
    Document   : dealwith
    Created on : 2016-3-25, 12:40:24
    Author     : dell
--%>


   <%@ page language="java" pageEncoding="utf-8" import="java.sql.*"%>        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录</title>
    </head>
    <body>
        <%
    String inputUname=request.getParameter("inputUname").trim();
     String inputPwd=request.getParameter("inputPwd").trim();
    
     inputUname=new String(inputUname.getBytes("iso8859-1"),"utf-8"); 
     
     Class.forName("com.mysql.jdbc.Driver");     
     String url= "jdbc:mysql://localhost:3306/j2ee";    
     String username = "root";
     String password = "glen";
     Connection conn=DriverManager.getConnection(url, username, password);
   
     String strsql="select * from login where username=? and password=?";
    PreparedStatement pstmt= conn.prepareStatement(strsql);
    pstmt.setString(1, inputUname);
    pstmt.setString(2,inputPwd);
    ResultSet rs=pstmt.executeQuery();
   
    
     if(rs.isBeforeFirst())
     { 
         session.setAttribute("inputUname",inputUname);
         response.sendRedirect("index.jsp");
     }
     else
     { 
         if(inputUname=="tom" && inputPwd=="tom"){
        response.sendRedirect("faq.jsp");}
     else 
     response.sendRedirect("login_def.jsp");
    }  
      rs.close();
    pstmt.close();
    conn.close();
        %>
    </body>
</html>
