<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>TiendaCD</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
   <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand">TiendaCD</a>
      </div>
      <div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="inicio.jsp">Inicio</a></li>
          <li><a href="discos.jsp">Discos</a></li> 
        </ul>
      </div>
    </div>
  </nav>

  <!-- Ac� termina la barra de navegaci�n superior. -->
  
  <div class="container" style="background-color:#aaa">
  <br><br><br>
  <div class="row">	
   	<div class="col-sm-4 col-sm-offset-1" style="background-color:#ffffff">
   		<div class="container">
   			<h3>Iniciar sesi�n</h3>
   		</div>
    	<form role="form" action="Inicio" method="post" id="formInicio" name="formInicio">
      		<div class="form-group"> 
        		<label for="userregister">Usuario:</label>
        		<input type="text" class="form-control" id="userregister" name="userregister">
      		</div> 
      		<div class="form-group"> 
        		<label for="password">Contrase�a:</label>
        		<input type="password" class="form-control" id="password" name="password">
      		</div> 
      		<%if (request.getAttribute("msjError")!=null){ %>
      		<font color="#FF0000">
      		<%=request.getAttribute("msjError") %>
      		</font>
      		<br>
      		<%} %>
      		<div class="form-group">
				<input class="btn btn-primary btn-block" type="submit" value="Ingresar" id="eventoIngresar" name="eventoIngresar"/>
			</div>
    	</form>
   </div>
   
   <div class="col-sm-4 col-sm-offset-2" style="background-color:#ffffff">
   		<div class="container">
   			<h3>Registrarse</h3>
   		</div>
    	<form role="form" action="Inicio" method="post" id="formReg" name="formReg">
      		<div class="form-group"> 
        		<label for="user">Usuario:</label>
        		<input type="text" class="form-control" id="user" name="user">
        		<%if (request.getAttribute("msjError2")!=null){ %>
      			<font color="#FF0000">
      			<%=request.getAttribute("msjError2") %>
      			</font>
      			<%} %>
      		</div> 
      		<div class="form-group"> 
        		<label for="password">Contrase�a:</label>
        		<input type="password" class="form-control" id="password" name="password">
      		</div> 
      		<div class="form-group"> 
        		<label for="nombre">Nombre:</label>
        		<input type="text" class="form-control" id="nombre" name="nombre">
      		</div> 
      		<div class="form-group"> 
        		<label for="apellido">Apellido:</label>
        		<input type="text" class="form-control" id="apellido" name="apellido">
      		</div> 
      		<div class="form-group"> 
        		<label for="dni">DNI:</label>
        		<input type="text" class="form-control" id="dni" name="dni">
      		</div> 
      		<div class="form-group">
				<input class="btn btn-primary btn-block" type="submit" value="Hecho" id="eventoRegistrar" name="eventoRegistrar"/>
			</div>
    	</form>
   </div>
  </div>
  <br><br><br>
  </div>

</body>
</html>