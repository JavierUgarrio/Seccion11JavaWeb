<%-- 
    Document   : index
    Created on : 29 oct 2024, 11:15:38
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <h1>Primer proyecto Java Web</h1>
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="index.jsp" method="POST">
                    <div class="modal-header">
                        <h1 class="modal-title">Crear Mensajes</h1>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="form-label">Ingrese el mensaje</label>
                            <textarea class="form-control" name="mensaje" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label >Autor</label>
                            <input type="text" name="autor" class="form-control">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
                    </div>
                </form>
            </div>
        </div> 
        <%
            String mensaje = request.getParameter("mensaje");
            String autor = request.getParameter("autor");
        %>
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title">Editar Mensaje</h1>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%=autor%></h5>
                            <p class="card-text"><%=mensaje%></p>
                            <p class="blockquote-footer"><cite>25/10/2024</cite></p>
                            <a href="#" class="card-link">Editar</a>
                            <a href="#" class="card-link">Eliminar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>       
    </body>
</html>
