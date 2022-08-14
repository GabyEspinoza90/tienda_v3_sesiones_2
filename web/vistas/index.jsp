<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="vistas/style.css" />
        <title>Index_tienda</title>
    </head>
    <body>
        <header class="header">
        </header>
        <a href="SVista">Menu</a>
        <div> 
            <div id="div1">
                 <img src="img/logotienda.png" align="center" id ="logo" >
           
                <form id="acceso" action="SSesion" method="POST">                    
                    <input type="text" name="tfUsuario" placeholder="Usuario">
                    <br>
                    <input type="password" name="tfPassword" placeholder="Password">
                    <br>
                    <input type="submit" name="btnSesion" value="Iniciar Session">
                    
                </form>
            </div>
        </div>
    </body>
</html>
