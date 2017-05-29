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
    <script type="text/javascript" src="js/jquery.min.js"></script>
   	<script >

    function login(){
      var vector_cuentas = [{usuario:"usuario",contrasenia:"usuario", privilegio:"usuario"},{usuario:"admin",contrasenia:"admin",privilegio:"admin"}];
      
      var usuario = document.getElementById("user_login").value;
      var contrasenia = document.getElementById("pass_login").value;

      console.log(typeof vector_cuentas[0].usuario+"-"+ typeof usuario);
      console.log(typeof vector_cuentas[0].contrasenia+"-"+typeof contrasenia);
      
      var campo;
      for(var i=0; i<vector_cuentas.length; i++){
        
        if(vector_cuentas[i].usuario === usuario && vector_cuentas[i].contrasenia === contrasenia){
          console.log("IGUALES");
          if(vector_cuentas[i].privilegio === "usuario"){
            location.href = "mi_cuenta_yancarlos.html";
            break;
          }
          if(vector_cuentas[i].privilegio === "admin"){
            location.href = "admin_usuarios.html";
            break;
          }
       
        }else{
          console.log("TODAVIA NO");
        }
        if(i === vector_cuentas.length-1 && !(vector_cuentas[i].usuario === usuario && vector_cuentas[i].contrasenia === contrasenia)){
          alert("Usuario o Contraseña Incorrectas")
        }

    }
    };

      var emailCorrecto=/\w[\w\d]+@\w+\.\w+/;
      $(document).ready(function(){
        $("#btnAceptarR").click(function(){

            var usuario = $("#userRegistrar").val();
            var correo = $("#correoRegistrar").val(); 
            var ima = $("#iconPerfilRegistrar").val();
            var pass1=$("#passRegistrar").val();
            var pass2=$("#pass2Registrar").val();
            var fecha=$("#fechaRegistrar").val();
            var bool=0;
           

            if(usuario==""|| /^\s+$/.test(usuario)){
              
              $("#mensUser").fadeIn();
              console.log("TODAVIA NO usuario");
              document.getElementById("userRegistrar").focus();
              usuario.focus.val("");
              bool=bool+1;
            }else{
              $("#mensUser").fadeOut();
              bool=bool-1;
            }
            
            if(usuario.length<6){
            	$("#mensUser1").fadeIn();
                console.log("TODAVIA NO usuario");
                document.getElementById("userRegistrar").focus();
                bool=bool+1;
            }else{
                $("#mensUser1").fadeOut();
                bool=bool-1;
             }

            if(correo==null||!emailCorrecto.test(correo)){
                $("#mensCorreo").fadeIn();
                console.log("TODAVIA NO correo");
                document.getElementById("correoRegistrar").focus();
                bool=bool+1;
            }else{
                $("#mensCorreo").fadeOut();
                bool=bool-1;

            }

            if(ima==""){
              $("#mensIcon").fadeIn();
              console.log("TODAVIA NO imagen");
              bool=bool+1;
            }else{
              $("#mensIcon").fadeOut();
              bool=bool-1;
            }

            if(pass1==""){
              $("#mensPass1").fadeIn();
              console.log("TODAVIA NO pass1");
              document.getElementById("passRegistrar").focus();
              bool=bool+1;
            }else{
                $("#mensPass1").fadeOut();
                bool=bool-1;
            }
            
            if(pass1.length<6){
            	$("#mensPass3").fadeIn();
            	document.getElementById("passRegistrar").focus();
            	console.log("menor a 6");
                bool=bool+1;
            }else{
                $("#mensPass3").fadeOut();
                bool=bool-1;
            }
            

            if(pass2==""||pass1!=pass2){
              $("#mensPass2").fadeIn();
              console.log("TODAVIA NO pass2");
              document.getElementById("pass2Registrar").focus();
              bool=bool+1;
            }else{
              $("#mensPass2").fadeOut();
              bool=bool-1;
            }

            if(fecha==""){
              $("#mensFecha").fadeIn();
              console.log("TODAVIA NO fecha");
              document.getElementById("fechaRegistrar").focus();
              bool=bool+1;
            }else{
              $("#mensFecha").fadeOut();
              bool=bool-1;
            }

            if(!$("#checkRegistrar").is(":checked")){
              alert("Debe Aceptar los terminos y condiciones");
              bool=bool+1;
            }else{
              console.log("si");
              bool=bool-1;
            }
            console.log(bool);
            if(bool==-9){
              alert("Registro Exitoso Revise su Correo");
              $('#registrar-modal').modal('hide');
              $("#form-Registrar")[0].reset();
              /*$("#registrar-modal").html("data-dismiss=modal");*/
            }
             


        });
            

      });
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
     
      <a style="" class="navbar-brand" href="index.jsp" id="img1"><img src="Recursos/logo.jpg" width="200" height="50" /></a>
      
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
  <div class="modal fade" id="registrar-modal" role="dialog" data-backdrop="static" data-keyboard="false">
      <div class="modal-dialog">
            <div class="modal-content">
                 <div class="modal-header" style="padding:35px 30px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h1><span class="glyphicon glyphicon-user"></span> Registrarme</h1>
                 </div>
                 <div class="modal-body" style="padding:40px 50px;">
                   <form role="form" id="form-Registrar">
                        <div class="form-group">
                          <div class="row">
                           <div class="col-xs-8">
                             <label for="userRegistrar"><span class="glyphicon glyphicon-user"></span>  *Usuario</label>
                             <input type="text" class="form-control col-sm-2" id="userRegistrar" placeholder="Ingrese Usuario">
                             <div id="mensUser" class="errores alert alert-danger" hidden>*Ingrese Usuario</div>
                             <div id="mensUser1" class="errores alert alert-danger" hidden>*Usuario debe ser minimo de 6 caracteres</div>
                           </div>
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                              <div class="col-xs-8">
                                <label for="correoRegistrar"><span class="glyphicon glyphicon-envelope"></span>*Correo Electronico</label>
                                <input type="text" class="form-control col-sm-2" id="correoRegistrar" placeholder="Ingrese Correo Electronico">
                                <div id="mensCorreo" class="errores alert alert-danger" hidden>*Ingrese Correo</div>
                              </div>
                            </div>
                        </div>
                        <div class="form-group">
                          <div class="row">
                              <div class="col-xs-8">

                                <label for="iconPerfilRegistrar"><span class="glyphicon glyphicon-picture"></span>Adjuntar un imagen de Perfil</label>
                                <input type="file" id="iconPerfilRegistrar" accept="image/gif, image/jpeg, image/png"/ >
                                <div id="mensIcon" class="errores2 alert alert-danger"hidden>*Ingrese Imagen</div>

                              </div>
                           </div>
                        </div>
                        <div class="form-group">
                          <div class="row">
                              <div class="col-xs-8">
                                <label for="passRegistrar"><span class="glyphicon glyphicon-lock"></span>*Password</label>
                                <input type="password" class="form-control" id="passRegistrar" placeholder="Ingrese Password">
                                <div id="mensPass1" class="errores2 alert alert-danger" hidden>*Ingrese Password</div>
                                <div id="mensPass3" class="errores2 alert alert-danger" hidden>*Password debe ser minimo de 6 caracteres</div>
                              </div>
                          </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-8">
                                  <label for="pass2Registrar"><span class="glyphicon glyphicon-lock"></span>*Verifique  la Password</label>
                                  <input type="password" class="form-control" id="pass2Registrar" placeholder="Confirme la Password">
                                  <div id="mensPass2" class="errores2 alert alert-danger" hidden>*Password no coinciden</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                           <div class="row">
                              <div class="col-xs-8">
                                <label for="fechaRegistrar"><span class="glyphicon glyphicon-calendar"></span>*Fecha Nacimiento</label>
                                <input type="date" class="form-control" data-date-format="dd MM yyyy" id="fechaRegistrar" placeholder="Dia/Mes/Año" >
                                <div id="mensFecha" class="errores2 alert alert-danger" hidden>Ingrese fecha</div>

                              </div>
                            </div>
                        </div>


                   </form>
                 </div>
                 <div class="modal-footer">
                  <div class="checkbox" >
                         <label><input type="checkbox" id="checkRegistrar" unchecked >Acepto los <a href="#">Términos y condiciones</a></label>
                   </div>
                   <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"> Cancel</span></button>
                   <button type="submit"  id="btnAceptarR" class="btn btn-success btn-default pull-right"><span class="glyphicon glyphicon-ok" > Aceptar</span></button>
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

  <div class="modal fade" id="login-modal" role="dialog" data-backdrop="static" data-keyboard="false">
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
                   <br/>
                      <label for="Password"><span class="glyphicon glyphicon-lock"></span>Password</label>
                      <input type="password" class="form-control" id="pass_login" placeholder="Ingrese Password">
                   </div>
                   <button type="button" class="btn btn-success btn-block" onclick="login()"><span class="glyphicon glyphicon-share" >  Login</span></button>
                   </form>
                </div>
                <div class="modal-footer">
                   <button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal">Cancel</button>
                   <p>Aun no tiene Cuenta? <a href="" data-toggle="modal" data-target="#registrar-modal" data-dismiss="modal">Registrarme </a></p>
                   <p>Olvido <a href="#">Password?</p>
                </div>
          </div>
      </div>
  </div>

   

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
	
</body>
</html>