<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
<%	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <title>Bibioteca</title>

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">

    <style>
        footer{
          width: 90%;
          bottom: 0;
          position: auto;
          height: 65px;
        }
    </style>
    
    <script>
	  <!--  
		   $(document).ready(function()
				   {
				      $("#mostrarmodal").modal("show");
				   });
	  -->
	</script>
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
          <li><a href="index.html">Tienda</a></li>
          <li><a href="BibliotecaJuegosUsuario.jsp">Biblioteca</a></li>
        </ul>

        <form class="navbar-form navbar-right" id="barraBusqueda">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
       
 		<%System.out.println(bean.getUsuario()); %>
        <ul class="nav navbar-nav navbar-right"> <!--try{bean.getImagen();}catch(Exception e){response.sendRedirect("/paginaErrorVista");} -->
             <li><a href=""><img id="user" src="Recursos/Perfiles/yancarlos.jpe" class="img-circle" width="19"> <% out.println(bean.getUsuario());%></a>
                <ul>
                    <li><a href="mi_cuenta_yancarlos.html"><span class="glyphicon glyphicon-user"> Mi cuenta</span></a></li>
                    <li><a href="carrito.html"><span class="glyphicon glyphicon-shopping-cart"> Carrito</span></a></li>
                </ul>
            </li>
            <li><a href="">|</a></li>
            <li><a href="salirUsuarioControladora">Salir</a></li>
        </ul>
        
      </div>      
    </div>
  </nav>


<!-- ---------------------AQUI INICIA LO QUE HAY QUE HACER DE FORMA DINAMICA------------------------------------->
  <div class="container table-responsive bs-example" id="main_biblioteca">
      <table class="table">
            <br>
            <thead>
                <font face="Comic Sans MS,arial,verdana" color="white">
                <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Juego</u></button></th>
                <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Desarrollador</u></button></th>
                <th><button class="btn btn-default" type="button" style="background-color: black; color: white;"><u>Adqurido</u></button></th>    
                </font>
            </thead>
            <tbody>
                <font face="Comic Sans MS,arial,verdana" color="black">
                    <th>
                        <img  style="float: left; margin-right:10px" src="Recursos/the_witcher_3.jpg" width="50" height="55" class"img-responsive img-thumbnail" alt="">
                        <br>
                        The Witcher 3: Wild Hunt
                    </th>
                    <th><br>CD PROJEKT RED</th>
                    <th><br>30 Marzo 2016</th>
                 </font>
            </tbody>
            <tbody>
                <font face="Comic Sans MS,arial,verdana" color="black">
                    <th>
                        <img  style="float: left; margin-right:10px" src="Recursos/cod.jpg" width="50" height="55" class"img-responsive img-thumbnail" alt="">
                        <br>
                        Call of Duty: Infinite Warfare
                    </th>
                    <th><br>Activision, Infinity Ward, Nokia</th>
                    <th><br>5 de noviembre de 2016</th>
                 </font>
            </tbody>
      </table>
  </div>
<!-- ---------------------HASTA AQUI ------------------------------------------------------------------------------------>
   

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