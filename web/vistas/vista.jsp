<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<%
    String usuario = (String) request.getSession().getAttribute("usuario");
    if(usuario==null)
    response.sendRedirect("SIndex");
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="vistas/style.css" />
        <title>Vista</title>
    </head>
    <body>  
        <div>
            <%@include file="header.jsp"%>   
        </div>
      <img  src="img/logotienda.png" align="center" id ="logo" >
    </body>
</html>
