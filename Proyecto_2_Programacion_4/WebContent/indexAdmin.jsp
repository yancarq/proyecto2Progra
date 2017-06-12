<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
<%	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Tienda</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
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
     
      <a style="padding-top:3px; margin-left:0px;" class="navbar-brand" href="redireccionamientoIndex?usuario=<%
           try{out.println(bean.getUsuario());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 requestDispatcher.forward(request, response);}%>&imagen=<%
			try{out.println(bean.getImagen());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&nombre=<%
			 try{out.println(bean.getNombre());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&correo=<%
			 try{out.println(bean.getCorreo());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&contrasenia=<%
			 	try{out.println(bean.getContrasenia());}catch(Exception e){
		        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
					 	requestDispatcher.forward(request, response);}%>&privilagio=<%
				try{out.println(bean.getPrivilegio());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>" id="img1"><img src="Recursos/logo.jpg" height="46" /></a>
      
      <div class="collapse navbar-collapse " id="menuOpciones">
        
        <ul class="nav navbar-nav">
          <li><a href="redireccionamientoAdministrarUsuarios?usuario=<%
           try{out.println(bean.getUsuario());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 requestDispatcher.forward(request, response);}%>&imagen=<%
			try{out.println(bean.getImagen());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&nombre=<%
			 try{out.println(bean.getNombre());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&correo=<%
			 try{out.println(bean.getCorreo());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&contrasenia=<%
			 	try{out.println(bean.getContrasenia());}catch(Exception e){
		        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
					 	requestDispatcher.forward(request, response);}%>&privilagio=<%
				try{out.println(bean.getPrivilegio());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>">Lista Usuarios</a></li>
          <li><a href="redireccionacionamientoAdministrasJuegos?usuario=<%
           try{out.println(bean.getUsuario());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 requestDispatcher.forward(request, response);}%>&imagen=<%
			try{out.println(bean.getImagen());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&nombre=<%
			 try{out.println(bean.getNombre());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&correo=<%
			 try{out.println(bean.getCorreo());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>&contrasenia=<%
			 	try{out.println(bean.getContrasenia());}catch(Exception e){
		        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
					 	requestDispatcher.forward(request, response);}%>&privilagio=<%
				try{out.println(bean.getPrivilegio());}catch(Exception e){
        	   RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 	requestDispatcher.forward(request, response);}%>">Lista Juegos</a></li>
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
             <li><a href="salirUsuarioControladora"><%out.println("Salir");%></a></li>
        </ul>
        <!--  ======================================================================================================================================= -->
      </div>      
    </div>
  </nav>
  
  <br>
  <div="container" >      
    <div style="border: 450px; margin-top: -25px;" class"img-responsive row" >
      <article height="60" class="col-md-2">
        <div id="muro_tags">
          <ul>
            <font face="Comic Sans MS,arial,verdana" color="black" size="2">
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Magia</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Mundo Abierto</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Aventura</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Ciencia ficción</a></li><br>              
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Acción</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Guerra</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Sigilo</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Plataformas</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Estrategia</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Horror</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Arcade</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >RPG</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Deportes</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Indie</a></li><br>
              <li style="padding-top:4px;"><a href="" class="glyphicon glyphicon-chevron-right btn-block app_tag btn btn-success btn-lg btn-sm " >Acceo Anticipado</a></li><br>
              <br>
            </font>
          </ul>
        </div>
      </article>
      
      <aside class="col-md-9">
        <h2>
          <font color="Lime">
            Novedades:
          </font>
        </h2> 
        <div id="myCarousel" class="carousel slide" >
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>
  <!-- Carousel items -->
          <div class="carousel-inner">
            <div class="active item"><img  src="Recursos/Novedades/borderlands_2.jpg" alt="banner1"></div>
            <div class="item"><img  src="Recursos/Novedades/for_honor.jpg" alt="banner2"></div>
            <div class="item"><img  src="Recursos/Novedades/skyrim.jpg" alt="banner3"></div>
            <div class="item"><a href="detalle_the_witcher_3.html"><img  src="Recursos/Novedades/the_witcher_3.jpg" alt="banner4"></a></div>
          </div>
<!-- Carousel nav -->
          <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
          <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
      </aside>     
    </div>
  </div>

  <div class="container-fluid" id="main_juegos">
    <div class="row">

      <aside>
        <div class="col-md-2 product-small2 " align="center">
        <h4 class="text-center"> 
           <span class="label label-success"> The Witcher 3: Wild Hunt</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/the_witcher_3.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$39.99 USD</h3>
        </font>
        <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Magia</a>
        <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Mundo Abierto</a>
        <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Aventura</a>
        <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Ciencia ficción</a>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href="detalle_the_witcher_3.html"><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-2 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success"> Call of Duty: Infinite Warfare</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/cod.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$59.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Multijugador</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Ciencia ficción</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-2 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success"> Dishonored-Definitive Edition</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/dishonored.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$19.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Ciencia ficción</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Sigilo</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Poderes</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success"> Halo 5: Guardians</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/halo.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$69.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Multijugador</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Aliens</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Ciencia ficción</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">Dishonored 2:</span>
           <span class="label label-success text-align">Game of the Year</span>
        </h4>
        <img  style="float: left; margin-right:10px"  src="Recursos/dishonored_2.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$69.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Aventura</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Sigilo</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Ciencia ficción</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">Rocket League</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/rocket_league.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$49.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Autos</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Deporte</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Simulación</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Multijugador</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">Shadow of Mordor:</span>
           <span class="label label-success text-align">Game of the Year</span>
        </h4>
        <img  style="float: left; margin-right:10px"  src="Recursos/shadow_of_mordor.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$19.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Aventura</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Sigilo</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Mundo Abierto</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">For Honor</span>
        </h4>
        <br>
        <img  style="float: left; margin-right:10px"  src="Recursos/for_honor.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$59.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >PvP</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Multijugador</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Medieval</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">Borderlands 2:</span>
           <span class="label label-success text-align">Game of the Year</span>
        </h4>
        <img  style="float: left; margin-right:10px"  src="Recursos/borderlands_2.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$9.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Guerra</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Acción</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Aventura</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Cooperativo</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </div>

      <div class="col-md-3 product-small2 " align="center">
        <h4 class="text-center">
           <span class="label label-success text-align">The Elder Scroll IV: Skyrim</span>
           <span class="label label-success text-align">Game of the Year</span>
        </h4>
        <img  style="float: left; margin-right:10px"  src="Recursos/skyrim.jpg" width="192" height="180" class"img-responsive img-thumbnail" alt="">
        <font face="Comic Sans MS,arial,verdana" color="Lime">
          <h3>$19.99 USD</h3>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Dragones!!</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Epico!!</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Sigilo</a>
          <a href="" class="app_tag btn btn-success btn-lg btn-sm " style="" >Magia!!</a>
        </font>
        <div class="container-fluid">
          <br>
          <a class="buy_nowa2" id="boton_detalle" href=""><button class="button_buy">Más detalles »</button></a>
        </div>
      </aside>
    </div>
      
    </div>
  </div>  

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