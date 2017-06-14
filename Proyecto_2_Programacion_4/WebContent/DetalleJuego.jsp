<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Imagenes"%>
<%@page import="controlador.ControladorJuegos"%>
<%@page import="Clases.Juegos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>

<%
	int id= Integer.parseInt(request.getParameter("id"));
	Juegos juego = new ControladorJuegos().getJuegos(id);
	ArrayList<Imagenes> img = new ControladorJuegos().getImagenJuego(id);
%>

<%
UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <title>TheWitcher3</title>

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
    


    <style>
      #main_juegos{
        background-image: url(Recursos/relieve.jpg);
        background-attachment: fixed;/*para que sea estático*/
        background-position: top right;/*arriba a la derecha*/
        margin-top: 60px;
        margin-left: 80px;
      }

      
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
<!-- Aqui detallejuego.txt -->

<!-- ---------------------AQUI INICIA LO QUE HAY QUE HACER DE FORMA DINAMICA------------------------------------->
  <div id="main_juegos" class="container">
 
  	
    <h2 align="center"><%=juego.getNombre_juego()%></h2>

      <section class="main row">
        
        <article class="col-md-4 col-md-5 col-lg-6" >
          <br>
          <div id="contenedor" style="border: 450px;" class"img-responsive">
            <div id="myCarousel" class="carousel slide" data-ride="carosel">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                  <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                  <div class="item active">
                  	<img  src="<%=juego.getImg_juegos()%>" alt="banner1" />
                  </div>
                  <%for(Imagenes imgs: img){%>
                  	<div class="item">
                  		<img  src="<%=imgs.getUrl_imagen_juego()%>" alt="banner" />	
                  	</div>
                  <%}%>
                <!--  <div class="item"><img  src="images/home/thewitcher3_1.jpg" alt="banner3" /></div>
                  <div class="item"><img  src="Recursos/ImagenesTheWitcher3/thewitcher3_4.jpg" alt="banner4" /></div>-->
                </div>
                <!-- Carousel nav -->
                <a class="left carousel-control " href="#myCarousel" data-slide="prev">
                	<span class="glyphicon glyphicon-chevron-left"></span>
      				<span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right"></span>
     				  <span class="sr-only">Next</span>
                </a>
              </div>
          </div>
        </article>

        <aside class="col-md-4 col-md-5 col-lg-6" align="center" >
            <font face="Comic Sans MS,arial,verdana" color="black">
                <h3 style="padding-top: -5px;">
                 Argumento:
                </h3>
                <p style="text-align:justify;">
               		<%=juego.getArgumento_juego() %>
                </p>
            </font>
            <font face="Comic Sans MS,arial,verdana" color="black">
               <h3>
                 Etiquetas:
               </h3>
            </font>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" ><%=juego.getGenero_juego() %></a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Mundo Abierto</a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Aventura</a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Ciencia ficción</a>
            <br>
        </aside>

    </section>

    <div class="col-md-4" align="center">
    
          <h1>Comprar <%=juego.getNombre_juego()%></h1>                    
            <div class="game_purchase_action">
              <div class="game_purchase_action_bg">
                <div class="game_purchase_price price">
               	 <form action="agregarproducto" method="post">
                   <font face="Comic Sans MS,arial,verdana" color="black"size="6">
	                     $<%=juego.getPrecio_juego() %>USD
                    </font> 
                    <input type="hidden" value="<%=juego.getId_juego()%>" name="idJuego">
                    <input type="hidden" value="1" id="txt-cantidad" name="cantidad"/>
                    <button type="submit" class="btn btn-success">
                    	<span>Añadir al carro</span>
                    </button>
              
               </form>       
                </div>
              </div>
            </div>
    </div>

    <div>
      <font face="Comic Sans MS,arial,verdana" color="black" size="2">
        <h3>
          Requisitos del Sistema
        </h3>
      </font>
      <div class="col-md-4" align="left">
        <font face="Comic Sans MS,arial,verdana" color="black" size="2">
          <h4>
            Minimo:
          </h4>
          <ul>
            <!-- <li type="circle"><strong>OS:</strong> 64-bit Windows 7, 64-bit Windows 8 (8.1) or 64-bit Windows 10</li>
            <li type="circle"><strong>Procesador:</strong> Intel CPU Core i5-2500K 3.3GHz / AMD CPU Phenom II X4 940</li>
            <li type="circle"><strong>Memoria:</strong> 6 GB de RAM</li>
            <li type="circle"><strong>Gráficos:</strong> Nvidia GPU GeForce GTX 660 / AMD GPU Radeon HD 7870</li>
            <li type="circle"><strong>Almacenamiento:</strong> 35 GB de espacio disponible</li>-->
            <li type="circle" style="text-align: justify;"><strong></strong> <%=juego.getRequisitos_minimos_juego()%></li>
          </ul>
        </font>
      </div>

      <div class="col-md-4" align="left">
        <font face="Comic Sans MS,arial,verdana" color="black" size="2">
          <h4>
            Recomendado:
          </h4>
          <ul>
            <!-- <li type="circle"><strong>OS:</strong> 64-bit Windows 7, 64-bit Windows 8 (8.1) or 64-bit Windows 10</li>
            <li type="circle"><strong>Procesador:</strong> Intel CPU Core i7 3770 3.4 GHz / AMD CPU AMD FX-8350 4 GHz</li>
            <li type="circle"><strong>Memoria:</strong> 8 GB de RAM</li>
            <li type="circle"><strong>Gráficos:</strong> Nvidia GPU GeForce GTX 770 / AMD GPU Radeon R9 290</li>
            <li type="circle"><strong>Almacenamiento:</strong> 35 GB de espacio disponible</li>-->
            <li type="circle" style="text-align: justify;"><strong></strong><%=juego.getRequisitos_recomendados_juego() %>></li>
          </ul>
        </font>
      </div>

    </div> 
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
 


  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function(){
        $('.myCarousel').carousel({
        	  interval: 3000
        });
    });
  </script>

  
  
</body>
</html>