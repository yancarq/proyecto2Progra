<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
<%	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">

    <title>Listas Juegos</title>
	
	 <style>
        footer{
          width: 90%;
          bottom: 0;
          position: auto;
          height: 65px;
        }
    </style>
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top" >
    
    <div class="container-fluid" >
      <div class="navbar-header" >
        <button type="button" class="navbar-toggle" data-target="#menuOpciones" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

      </div>
     
      <a style="padding-top:3px; margin-left:0px;" class="navbar-brand" href="index.jsp" id="img1"><img src="Recursos/logo.jpg" height="46" /></a>
      
      <div class="collapse navbar-collapse " id="menuOpciones">
        
        <ul class="nav navbar-nav">
          <li><a href="admin_usuarios.html">Lista Usuarios</a></li>
          <li><a href="admin_juegos.html">Lista Juegos</a></li>
        </ul>

        <form class="navbar-form navbar-right" id="barraBusqueda">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
       <!--  ======================================================================================================================================= --> 
        <ul class="nav navbar-nav navbar-right">
            <li><a href="">Señor Administrador</a></li>
            <li><a href="">|</a></li>
            <li><a href="salirUsuarioControladora">Salir</a></li>
        </ul>
        <!--  ======================================================================================================================================= -->
      </div>      
    </div>
  </nav>
  
	<!--  ======================================================================================================================================= -->
    <div class="container table-responsive bs-example" id="main_biblioteca">
        <br>
        <button onclick="abrirModificar_Crear()" class="btn btn-primary btn-lg" style="margin-left:7px;">Agregar Nuevo Juego</button>
        <table class="table">
                <br>
                <thead>
                    <font face="Comic Sans MS,arial,verdana" color="white">
                        <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Juego</u></button></th>
                        <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Desarrollador</u></button></th>
                        <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Fecha Creado</u></button></th>    
                    </font>
                </thead>
                <tbody>
                    <font face="Comic Sans MS,arial,verdana" color="black">
                        <th>
                            <img  style="float: left; margin-right:10px" src="Recursos/the_witcher_3.jpg" width="50" height="55" class"img-responsive img-thumbnail" alt="">
                            <br><a href="" role="button" data-toggle="modal" class="app_tag" data-target="#OpcionesJuegos">The Witcher 3: Wild Hunt</a>
                        </th>
                        <th><br><a href="http://en.cdprojektred.com/" target="_blank">CD PROJEKT RED</a></th>
                        <th><br>19 de mayo de 2015</th>
                    </font>
                </tbody>
                <tbody>
                <font face="Comic Sans MS,arial,verdana" color="black">
                    <th>
                        <img  style="float: left; margin-right:10px" src="Recursos/cod.jpg" width="50" height="55" class"img-responsive img-thumbnail" alt="">
                        <br>
                        Call of Duty: Infinite Warfare
                    </th>
                    <th><br><a href="https://www.activision.com/es/" target="_blank">Activision</a> y <a href="https://www.infinityward.com/" target="_blank">Infinity Ward</a></th>
                    <th><br>4 de noviembre de 2016</th>
                 </font>
            </tbody>
            <tbody>
                <font face="Comic Sans MS,arial,verdana" color="black">
                    <th>
                        <img  style="float: left; margin-right:10px" src="Recursos/dishonored_2.jpg" width="50" height="55" class"img-responsive img-thumbnail" alt="">
                        <br>
                        Dsihonored 2
                    </th>
                    <th><br><a href="http://www.arkane-studios.com/uk/index.php" target="_blank">Arkane Studios</a> y <a href="https://bethesda.net/es/dashboard" target="_blank">Bethesda Softworks</a></th>
                    <th><br>11 de noviembre de 2016</th>
                 </font>
            </tbody>
        </table>
    </div>

   <div class="modal fade" id="OpcionesJuegos" role="dialog" data-backdrop="static" data-keyboard="false">
      <div class="modal-dialog">
            <div class="modal-content">
                 <div class="modal-body" style="padding:20px 50px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h2><span class="glyphicon glyphicon-alert"></span> Eliminar/Modificar Juego</h2>
                   <form role="form">
                      <div class="form-group">
                        <label for="juegoP" id="lblImagen" align="left">Imagen</label>
                        <label for="juegoP" id="lblArticulos">Juego</label>

                        <label for="juegoP" id="lblFechaCreado" align="center">Fecha <Agregado></Agregado></label>
                        <div class="panel panel-default">
                            <div class="panel-body">
                              <div class="row" align="left">
                                  <div class="col-xs-2">
                                    <img src="Recursos/the_witcher_3.jpg" class="img-rounded" alt="Cinque Terre" width="70" height="70" id="juegoP">
                                  </div>
                                  <div class="col-xs-6">
                                    <label id="lblNombreJuego">The Witcher 3: Wild Hunt</label>
                                  </div>
                                  
                                  <div class="col-xs-4">
                                    <label>19 de mayo de 2015</label>
                                  </div>
                              </div>
                            </div>
                        </div>
                    </div>
                  </form>

                 </div>
                 <div class="modal-footer">
                   <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"> Cancel</span></button>
                   <a class="btn btn-primary  pull-right" href="" role="button" onclick="eliminar()" ><span class="glyphicon glyphicon-trash"></span>Eliminar</a></h2>
                   <a class="btn btn-primary  pull-right" href="crear-modicar_Juego.html" role="button"  ><span class="glyphicon glyphicon-refresh"></span>Modificar</a></h2>
                 </div>
            </div>
      </div>
  </div>
 <!--  ======================================================================================================================================= -->
  
  <footer>
    <HR align="left" size="2" width="1310" color="Green" noshade>
     <p align="center"> <font face="arial" color="white">
        Esto fue realizado por:<br>
        Jason F. González García<br>
        Yancarlos Retana Quesada<br>
      </font>
      </p>
  </footer>

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>


</body>
</html>