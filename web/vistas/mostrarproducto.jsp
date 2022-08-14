<%@page import="beans.Producto"%>
<%@page import="dao.DAOProducto"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String usuario = (String) request.getSession().getAttribute("usuario");
    if(usuario==null)
    response.sendRedirect("SIndex");
%>    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="vistas/estilos.css">
        <title>Producto</title>
    </head>
    <body>
        <form id="frmProducto" action="SProducto" method="POST">
        <h1>Listado_Productos</h1>
        <div id="nuevoproducto">
            <!--<a href="SProducto?accion=nuevo"><button>Nuevo</button>  </a>-->
            <a href="#" onclick="procesar('nuevo','')">Nuevo</a>
        </div>
        
        <div>
        <table border="1">
                <thead>
                    <tr>
                        <th>Codigo_producto</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Codigo_fabricante</th>
                        
                        <th colspan="2">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    DAOProducto daoProducto = new DAOProducto();
                    ArrayList<Producto> lista = daoProducto.mostrar();
                    for(int i=0; i<lista.size(); i++)
                    {
                     Producto producto=new Producto();
                     producto = lista.get(i);
                    %>
                    <tr>
                        <td><%=producto.getCodigo_producto()%></td>
                        <td><%=producto.getNombre()%></td>
                        <td><%=producto.getPrecio()%></td>
                        <td><%=producto.getCodigo_fabricante()%></td>
                        
                        <td>
                            <%--<a href="SProducto?accion=editar&codigo_producto=<%=producto.getCodigo_producto()%>"><button>Editar</button></a>--%>
                            <a href="#" onclick="procesar('editar','<%=producto.getCodigo_producto()%>')">Editar</a>
                        </td>
                        <td>
                            <%--<a href="SProducto?accion=eliminar&codigo_producto=<%=producto.getCodigo_producto()%>"><button>Eliminar</button></a>--%>
                            <a href="#" onclick="procesar('eliminar','<%=producto.getCodigo_producto()%>')">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </form>
                <script>
                    function procesar(accion, codigo_producto)
                    {
                        var tfAccion   = document.createElement("input");
                        tfAccion.name  = "tfAccion";
                        tfAccion.type   = "hidden";
                        tfAccion.value = accion;
                        
                        var tfCodigo_producto   = document.createElement("input");
                        tfCodigo_producto.name  = "tfCodigo_producto";
                        tfCodigo_producto.type   = "hidden";
                        tfCodigo_producto.value = codigo_producto;
                        
                        var padre =  document.getElementById("frmProducto");
                        padre.appendChild(tfAccion);
                        padre.appendChild(tfCodigo_producto);
                        padre.submit();
                    }
                </script>
    </body>
</html>
