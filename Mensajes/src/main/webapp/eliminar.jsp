<%-- 
    Document   : eliminar
    Created on : 31 oct 2024, 23:14:08
    Author     : User
--%>
<%@page import="com.oregoon.mensajes.Mensaje"%>
<%@page import="java.util.*"%>
<%@page import="com.oregoon.mensajes.MensajeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String id = request.getParameter("id");
            Mensaje msjE = new Mensaje(Integer.valueOf(id));
            MensajeDao mdao = new MensajeDao();
            mdao.eliminar(msjE);
            request.getRequestDispatcher("index.jsp").forward(request,response);
        %>
        
    </body>
</html>
