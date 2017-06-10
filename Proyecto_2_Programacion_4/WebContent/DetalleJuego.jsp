<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
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
     
      <a style="padding-top:3px; margin-left:0px;" class="navbar-brand" href="index.jsp" id="img1"><img src="Recursos/logo.jpg" height="46" /></a>  
          
      <div class="collapse navbar-collapse " id="menuOpciones">
        
        <ul class="nav navbar-nav">
          <li><a href="index.html">Tienda</a></li>
          <li><a href="biblioteca.html">Biblioteca</a></li>
        </ul>

        <form class="navbar-form navbar-right" id="barraBusqueda">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        
        <ul class="nav navbar-nav navbar-right">
            <li><a href=""><img src=try{out.println(bean.getImagen());}catch(Excetion e){response.sendRedirect("/paginaErrorVista");} class="img-circle" width="19"> <%try{ out.println(bean.getUsuario()); }catch(Exception e){response.sendRedirect("/paginaErrorVista");} %></a>
                <ul>
                    <li><a href="mi_cuenta_yancarlos.html"><span class="glyphicon glyphicon-user"></span> Mi cuenta</a></li>
                    <li><a href="carrito.html"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito</a></li>
                </ul>
            </li>
            <li><a href="">|</a></li>
            <li><a href="salirUsuarioControladora">Salir</a></li>
        </ul>
        
      </div>      
    </div>
  </nav>
	
<!-- ---------------------AQUI INICIA LO QUE HAY QUE HACER DE FORMA DINAMICA------------------------------------->
  <div id="main_juegos" class="container">
 
  	
    <h2 align="center5">The Witcher 3: Wild Hunt</h2>

      <section class="main row">
        
        <article class="col-md-4 col-md-5 col-lg-6" >
          <br>
          <div id="contenedor" style="border: 450px;" class"img-responsive">
            <div id="myCarousel" class="carousel slide">
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                <!-- Carousel items -->
                <div class="carousel-inner">
                  <div class="active item"><img  src="Recursos/ImagenesTheWitcher3/thewitcher3_1.jpg" alt="banner1" /></div>
                  <div class="item"><img  src="Recursos/ImagenesTheWitcher3/thewitcher3_2.jpg" alt="banner2" /></div>
                  <div class="item"><img  src="Recursos/ImagenesTheWitcher3/thewitcher3_3.jpg" alt="banner3" /></div>
                  <div class="item"><img  src="Recursos/ImagenesTheWitcher3/thewitcher3_4.jpg" alt="banner4" /></div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
          </div>
        </article>

        <aside class="col-md-4 col-md-5 col-lg-6" align="center" >
            <font face="Comic Sans MS,arial,verdana" color="black">
                <h3 style="padding-top: -5px;">
                 Argumento:
                </h3>
                <p style="text-align: justify;">
                CD Projekt RED ha declarado que no es necesario haber jugado a las entregas anteriores para poder disfrutar de Wild Hunt.2 Aunque similar a los anteriores títulos de The Witcher, Wild Hunt ha mejorado en varios aspectos respecto a juegos anteriores. El combate se basa en un sistema de juego de rol de acción combinado con el uso de magia. El sistema de combate ha sido completamente renovado. Wild Hunt introduce algunas mecánicas nuevas, como el «sentido de brujo», combate a caballo y en alta mar, nadar bajo el agua y el uso de una ballesta.
                </p>
            </font>
            <font face="Comic Sans MS,arial,verdana" color="black">
               <h3>
                 Etiquetas:
               </h3>
            </font>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Magia</a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Mundo Abierto</a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Aventura</a>
            <a href="" class="app_tag btn btn-success btn-lg btn-sm hipervinculo_juego" style="" >Ciencia ficción</a>
            <br>
        </aside>

    </section>

    <div class="col-md-4" align="center">
      <div>
        <div>
          <h1>Comprar The Witcher 3: Wild Hunt®</h1>                    
            <div class="game_purchase_action">
              <div class="game_purchase_action_bg">
                <div class="game_purchase_price price">
                   <font face="Comic Sans MS,arial,verdana" color="black"size="6">
                     $39.99 USD
                    </font>
                </div>
                <div class="btn_addtocart">
                  <a class="btn btn-success" href="" role="button" data-toggle="modal" data-target="#verificaCompras-modal">
                    <span>Añadir al carro</span>
                  </a>             
                </div>
              </div>
              <br>
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
            <li type="circle"><strong>OS:</strong> 64-bit Windows 7, 64-bit Windows 8 (8.1) or 64-bit Windows 10</li>
            <li type="circle"><strong>Procesador:</strong> Intel CPU Core i5-2500K 3.3GHz / AMD CPU Phenom II X4 940</li>
            <li type="circle"><strong>Memoria:</strong> 6 GB de RAM</li>
            <li type="circle"><strong>Gráficos:</strong> Nvidia GPU GeForce GTX 660 / AMD GPU Radeon HD 7870</li>
            <li type="circle"><strong>Almacenamiento:</strong> 35 GB de espacio disponible</li>
          </ul>
        </font>
      </div>

      <div class="col-md-4" align="left">
        <font face="Comic Sans MS,arial,verdana" color="black" size="2">
          <h4>
            Recomendado:
          </h4>
          <ul>
            <li type="circle"><strong>OS:</strong> 64-bit Windows 7, 64-bit Windows 8 (8.1) or 64-bit Windows 10</li>
            <li type="circle"><strong>Procesador:</strong> Intel CPU Core i7 3770 3.4 GHz / AMD CPU AMD FX-8350 4 GHz</li>
            <li type="circle"><strong>Memoria:</strong> 8 GB de RAM</li>
            <li type="circle"><strong>Gráficos:</strong> Nvidia GPU GeForce GTX 770 / AMD GPU Radeon R9 290</li>
            <li type="circle"><strong>Almacenamiento:</strong> 35 GB de espacio disponible</li>
          </ul>
        </font>
      </div>

    </div> 
  </div>
	<!-- ---------------------HASTA AQUI ------------------------------------------------------------------------------------>
  <footer>
      <HR align="center" size="2" width="1310" color="Green" noshade>
      <font face="arial" color="white">
      Esto fue realizado por:<br>
      Jason F. González García<br>
      Yancarlos Retana Quesada<br>
      </font>
  </footer>


  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script>
    $(document).ready(function(){
        $('.myCarousel').carousel({
            interval: 3000
        });
    });
  </script>
  <!--Modal Verificar Compra-->
  <div class="modal fade" id="verificaCompras-modal" role="dialog" data-backdrop="static" data-keyboard="false" >
      <div class="modal-dialog">
            <div class="modal-content">
                 <div class="modal-body" style="padding:20px 50px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h2><span class="glyphicon glyphicon-shopping-cart"></span> Carrito Compras
                   <a class="btn btn-primary  pull-right" href="index.html" role="button" >Continuar con sus compras</a></h2>
                   <form role="form">
                        <div class="form-group row">
                        <label for="juegoP" id="lblArticulos">Nombre Articulo</label>

                        <label for="juegoP" id="lblPrecio">Precio</label>
                          <div class="panel panel-default">
                            <div class="panel-body">
                              <div class="form-group row">
                                  <div class="col-xs-3">
                                    
                                    <img src="Recursos/the_witcher_3.jpg" class="img-rounded" alt="Cinque Terre" width="70" height="70" id="juegoP">
                                    </div>
                                    <div class="col-xs-3">
                                    <label id="lblNombreJg">The Witcher 3: Wild Hunt</label>
                                  </div>
                                  <div class="col-xs-3">
                                    <label id="lblPreciojg">$39.99 USD</label>
                                  </div>
                              </div>
                            </div>
                           </div>
                        </div>
                   </form>

                  </div>

                  <div class="modal-footer">
                    <div class="checkbox">
                          <label><input type="checkbox" value="" unchecked>Acepto los <a href="#">Términos y condiciones</a></label>
                    </div>
                    <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"> Cancel</span></button>
                    <a class="btn btn-primary  pull-right" href="carrito.html" role="button" ><span class="glyphicon glyphicon-check"></span>Pagar</a></h2>
                </div>
            </div>
      </div>
  </div>
  
  
</body>
</html>