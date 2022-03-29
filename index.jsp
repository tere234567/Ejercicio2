<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Tareas"%>
<%
   if(session.getAttribute("tarea")==null){
        ArrayList<Tareas> lisaux = new ArrayList<Tareas>();
        session.setAttribute("tarea", lisaux);
        
    }
    ArrayList<Tareas> tarea = (ArrayList<Tareas>)session.getAttribute("tarea");
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Añadir Tarea</h2>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0" ></td>
                </tr>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea"  ></td>       
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Nuevo" /></td>
                </tr>
            </table>
        </form>
        
        <a href="MainServlet?op=nuevo">Borrar Tareas </a>
        <h1>Tareas Pendientes</h1>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th > Completado</th>
                
            </tr>
            <%
              if(tarea !=null){
                  for(Tareas t:tarea){
            %>
            <tr>
                <td><%= t.getId()%></td>
                <td><%= t.getTarea()%></td>
                <td><input type="checkbox" name="completado"  ></td>
                <td><a href="MainServlet?op=eliminar&id=<%=t.getId() %>">eliminar</a></td>
            </tr>
            <%
                }
                }
            %>
        </table>
    </body>
</html>
