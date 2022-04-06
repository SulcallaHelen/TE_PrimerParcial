<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Productos"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primer Parcial</title>
    </head>
    <body>
       <center>
        <div style="border:3px red double; width:400px;  background-color: #e6ee9c">
                <h2 >PRIMER PARCIAL TEM-742</h2>
                <h3 >Nombre: Sulcalla Huarina Helen Astrid </h3>
                <h3 >C.I. : 13087702</h3>
        </div>
       
        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Registro</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody>
            <%
                if (lista != null) {
                    for(Productos item : lista){
                    
            %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getDescripcion() %></td>
                    <td><%= item.getCantidad() %></td>
                    <td><%= item.getPrecio() %></td>
                    <td><%= item.getCategoria() %></td>
                    <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de eliminar el registro?')">Eliminar</a></td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
 </center >
    </body>
</html>
