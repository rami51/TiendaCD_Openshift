<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Capa_de_Control.Controlador" %>
<%@ page import="Capa_de_Entidades.Usuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>TiendaCD</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<%Controlador controlador = new Controlador(); %>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
     <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand">TiendaCD</a>
      </div>
      <div>
        <ul class="nav navbar-nav">
          <li><a href="discosAdmin.jsp">Discos</a></li> 
          <li><a href="autoresAdmin.jsp">Autores</a></li>
          <li><a href="generosAdmin.jsp">G�neros</a></li>
          <li><a href="descuentosAdmin.jsp">Descuentos</a></li>          
          <li class="active"><a href="usuariosAdmin.jsp">Usuarios</a></li>
        </ul>
      </div>
    </div>
  </nav>

<div class="container" style="background-color:#aaa">
	<br><br><br>
	<div class="col-sm-11.5 col-sm-offset-0.5" style="background-color:#ccc">
		<div class="container">
		<h3>Usuarios</h3>
 		</div>
	</div>
	<div class="col-sm-11.5 col-sm-offset-0.5">
     <table class="table table-hover" style="background-color:#ffffff">
       
       <thead>
       	<tr>
       		<th>Datos del usuario</th>
 			<th>Acci�n</th>
       	</tr>
       </thead>
       <tbody>
       <%
           ArrayList<Usuario> usuarios = controlador.getUsuarios();
           for(int i=0; i<usuarios.size(); i++){
           Usuario usuario = usuarios.get(i);						%>
         <tr>     
         	<td><b>Usuario:</b> <%=usuario.getUsuario()%><br>
         		<b>Nombre:</b> <%=usuario.getNombre()%><br>
         		<b>Apellido:</b> <%=usuario.getApellido()%><br>
         		<b>DNI:</b> <%=usuario.getDni()%><br>
         	</td>
         	<td style="vertical-align:middle">
         	<form role="form" action="UsuariosAdmin" method="post" id="eliminarUsu" name="eliminarUsu"> 
         		<input type="hidden" name="numero" id="numero" value="<%=i%>"/>     		
         		<input class="btn btn-danger" type="submit" value="Eliminar" id="eliminarUsu" name="eliminarUsu" />
         	</form>
         	</td> 
         </tr>
         <%} %>
        </tbody>
     </table>
  </div>

</div>




</body>
</html>
