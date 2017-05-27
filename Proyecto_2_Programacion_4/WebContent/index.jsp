<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
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
     
      <a class="navbar-brand" href="index.jsp">Proyecto_1</a>
      
      <div class="collapse navbar-collapse " id="menuOpciones">
        
        <ul class="nav navbar-nav">
          <li><a href="index.jsp">Tienda</a></li>
          <li><a href="biblioteca.html">Biblioteca</a></li>
        </ul>

        <form class="navbar-form navbar-right" id="barraBusqueda">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>

        <ul class="nav navbar-nav navbar-right">
          <li><a href="" data-toggle="modal" data-target="#registrar-modal">Registar</a></li>
          <li><a href="" data-toggle="modal" id =""data-target="#login-modal">Ingresar</a></li>
        </ul>
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

  

  <!--Modal Registrar-->
  <div class="modal fade" id="registrar-modal" role="dialog">
      <div class="modal-dialog">
            <div class="modal-content">
                 <div class="modal-header" style="padding:35px 30px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h1><span class="glyphicon glyphicon-user"></span> Registrarme</h1>
                 </div>
                 <div class="modal-body" style="padding:40px 50px;">
                   <form role="form">
                        <div class="form-group">
                          <div class="row">
                           <div class="col-xs-8">
                             <label for="Usuario"><span class="glyphicon glyphicon-user"></span>  Usuario</label>
                             <input type="text" class="form-control col-sm-2" id="user" placeholder="Ingrese Usuario">
                           </div>
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                              <div class="col-xs-8">
                                <label for="Usuario"><span class="glyphicon glyphicon-envelope"></span>Correo Electronico</label>
                                <input type="text" class="form-control col-sm-2" id="correo" placeholder="Ingrese Correo Electronico">
                              </div>
                            </div>
                        </div>
                        <div class="form-group">
                          <div class="row">
                              <div class="col-xs-8">
                                <label for="imagen"><span class="glyphicon glyphicon-picture"></span>Adjuntar un imagen de Perfil</label>
                                <input type="file" id="iconPerfil" accept="image/gif, image/jpeg, image/png"/>
                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                          <div class="row">
                              <div class="col-xs-8">
                                <label for="Password"><span class="glyphicon glyphicon-lock"></span>Password</label>
                                <input type="password" class="form-control" id="pass" placeholder="Ingrese Password">
                              </div>
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-8">
                                  <label for="Password"><span class="glyphicon glyphicon-lock"></span>Password</label>
                                  <input type="password" class="form-control" id="pass2" placeholder="Confirme la Password">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                           <div class="row">
                              <div class="col-xs-8">
                                <label for="fecha"><span class="glyphicon glyphicon-calendar"></span>Fecha Nacimiento</label>
                                <input type="date" class="form-control" data-date-format=" MM yyyy" id="fecha" placeholder="Mes/Año">

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
                   <button type="submit" id="btnAceptarR"class="btn btn-success btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-ok" > Aceptar</span></button>
                 </div>
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

  

  <!--Modal Login-->

  <div class="modal fade" id="login-modal" role="dialog">
      <div class="modal-dialog">
          <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h1><span class="glyphicon glyphicon-user"></span>  Iniciar sesion</h1>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                   <form role="form">
                   <div class="form-group">
                      <label for="Usuario"><span class="glyphicon glyphicon-user"></span>Usuario</label>
                      <input type="text" class="form-control" id="user_login" placeholder="Ingrese Usuario">
                   <div class="form-group">
                      <label for="Password"><span class="glyphicon glyphicon-lock"></span>Password</label>
                      <input type="password" class="form-control" id="pass_login" placeholder="Ingrese Password">
                   </div>
                   <button type="button" class="btn btn-success btn-block" onclick="login()"><span class="glyphicon glyphicon-share">  Login</span></button>
                   </form>
                </div>
                <div class="modal-footer">
                   <button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal">Cancel</button>
                   <p>Aun no tiene Cuenta? <a href="#">Registrarme </a></p>
                   <p>Olvido <a href="#">Password?</p>
                </div>
          </div>
      </div>
  </div>

     
  <script>
     
    </script>
    
   

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>