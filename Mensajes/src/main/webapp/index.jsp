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
                <div class="modal-header">
                    <h1 class="modal-title">Proyecto Mensajes</h1>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label class="form-label">Ingrese el mensaje</label>
                            <textarea class="form-control" name="mensaje" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label >Autor</label>
                            <input type="text" name="mensaje" class="form-control">
                        </div>
                    </form>
                    
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" name="enviar">Enviar</button>
                </div>
            </div>
        </div>    
        
        
    </body>
</html>
