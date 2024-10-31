<%-- 
    Document   : editar
    Created on : 31 oct 2024, 22:46:03
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
        <title>Editar mensaje</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="index.jsp" method="POST">
                    <div class="modal-header">
                        <h1 class="modal-title">Editar Mensajes</h1>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                            <label class="form-label">Ingrese el mensaje</label>
                            <textarea class="form-control" name="mensaje" rows="3">
                                <%=request.getParameter("mensaje")%>
                            </textarea>
                        </div>
                        <div class="mb-3">
                            <label >Autor</label>
                            <input type="text" name="autor" value="<%=request.getParameter("autor")%>" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="index.jsp" type="submit" class="btn btn-danger" name="enviar">Regresar</a>
                        <button type="submit" class="btn btn-primary" name="enviar">Guardar cambios</button>
                    </div>
                </form>
            </div>
        </div> 
        <%
            MensajeDao mdao = new MensajeDao();
            String id = request.getParameter("id");
            
            if(request.getParameter("enviar")!=null){
                Mensaje ms1 = new Mensaje(
                    Integer.parseInt(id.trim()),
                    request.getParameter("mensaje"), 
                    request.getParameter("autor"));
                mdao.editar(ms1);
            }
        %>
    </body>
</html>
