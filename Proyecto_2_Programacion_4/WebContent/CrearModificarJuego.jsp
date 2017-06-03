<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/validacion.js""></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
    
    
    <title>Crear/Modificar Juego</title>
    <scrip>
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
     
      <a class="navbar-brand" href="index.html">Proyecto_1</a>
      
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
        
        <ul class="nav navbar-nav navbar-right">
            <li><a href="">Señor Administrador</a></li>
            <li><a href="">|</a></li>
            <li><a href="index.html">Salir</a></li>
        </ul>
        
      </div>      
    </div>
  </nav>
  
  <div class="container" id="main_biblioteca">
    <div>
        <form action="" >
            <font face="Comic Sans MS,arial,verdana" color="black" size="2">
                <h3>Modificar/Crear Juego</h3>
                    <div class="row">
                        <div class="col-md-4 ">
	                        <div class="control-group form-group">
	                        
	                            Nombre del Juego: <br>
	                            <span id="alertnombre" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
	                            	<input type="text" class="form-control" placeholder="Nombre Juego" required data-validation-required-message="Ingrese el nombre del Juego" size="50" value="" id="nombre_juego" >
	                        	</span>
	                        	<p class="help-block"></p>
	                        </div>
                        </div>
                 
                        <div class="col-md-2">
                        	<div class="control-group form-group">
		                        <div class="control-group">
		                            Precio: <br>
		                             <span id="alertprecio" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
		                            	<input type="text" class="form-control" id="precio_juego" placeholder="Dolares" onkeypress="return validarNum(event)">
		                            </span>
		                        </div>
	                        </div>
                        </div>
                        <div class="col-md-2">
                            Rebaja: <br>
                            <input type="text" class="form-control" id="rebaja_juego" placeholder="Rebaja">
                        </div>
                      
                    </div>
                    <br/>
                    <div class="row">
                    	  <div class="col-md-3" align="left"> 
                        	Imagen Princial<br/>
                        	<span id="alertImgP" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                        	   	<input type="file" id="pimgJuego" accept="image/gif, image/jpeg, image/png">
                        		<img id="primJ" name="primJ" src=""  class="img1" height="100px" width="100px"/>
                        	</span>
                          </div>
                          <div class="col-md-4" align="center">
                          <p align="right"> Inserte 4 Imagenes Preview del Juego</p><br/>
                          
                           <span id="alertImg1" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
	                           <input type="file" id="imgJuego1" accept="image/gif, image/jpeg, image/png" >
	                           <img id="juego1" src="" alt="imagen1" class="img1" height="100px" width="100px"/>
                           </span>
                           <br/>
                           <span id="alertImg2" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                           		<input type="file" id="imgJuego2" accept="image/gif, image/jpeg, image/png">
                           		<img id="juego2" src="" alt="imagen2" class="img1" height="100px" width="100px"/>
                           </span>
                          </div>
                          <br/>
                       	  <div class="col-md-4" align="right">
                       	  <br/>
                       	  <br/>
                       	    <span id="alertImg3" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                       	   		 <input type="file" id="imgJuego3" accept="image/gif, image/jpeg, image/png" >
                       	   		 <img id="juego3" src="" alt="imagen3" class="img1" height="100px" width="100px"/>
                       	    </span>
                       	    <br/>
                       	    <span id="alertImg4" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                            	<input type="file" id="imgJuego4" accept="image/gif, image/jpeg, image/png" >
                       	    	<img id="juego4" src="" alt="imagen4" class="img1" height="100px" width="100px"/>
                       	    </span>
                       	  </div>
                    
                    
                    </div>
                    <div class="row">
                        <div class="col-md-11">
                   		 	Argumento: <br>
                    		<span id="alertArgumento" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                   				 <textarea class="form-control" name="argumentoJuego" rows="10" cols="20" id="argumento_juego">
                   				 </textarea>
                   			</span>
              			</div>
              			</div>
              		<div class="row">
                        <div class="col-md-11">	
                  		  Etiquetas: <br>
                   		 <span id="alertEtiqueta" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                    			<input type="text" class="form-control" size="80" value="" id="etiquetas_juego">
                  	     </span>
                  	   </div>
                  	 </div>
                    <div class="row">
                        <div class="col-md-5">
                            Requerimiento Minimo: <br>
                            <span id="alertRMin" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                            	<textarea class="form-control" name="requirimientoR" rows="10" cols="40" id="requirimientoM">
                            	</textarea>
                            </span>
                        </div>
                        <div class="col-md-6">
                            Requerimiento Recomendable: <br>
                            <span id="alertRMax" data-toggle="popover" data-trigger="hover" data-placement="right" title="" dat-content="">
                           		 <textarea class="form-control" name="requirimientoR" rows="10" cols="40" id="requirimientoR">
                           		 </textarea>
                            </span>
                        </div>
                    </div>
                    <br>
                    <button type="submit" id="botonGuardar"class="btn btn-success btn-default pull-left" ><span class="glyphicon glyphicon-floppy-disk"> Guardar Cambios</span></button>
                     <button type="button" class="btn btn-danger btn-default pull-right"  ref="index.html" data-dismiss="modal"><span class="glyphicon glyphicon-remove"> Cancelar Cambios</span></button>
                    <br>
                    <br>
            </font>
        </form>
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
   
   
   
  <script type="text/javascript">
	 /* function readURL(input){
	  	if (input.files && input.files[0]) {
	          var reader = new FileReader();
	          
	          reader.onload = function (e) {
	              $('#primJ').attr('src', e.target.result);
	          }
	          reader.readAsDataURL(input.files[0]);
	       }
	  }onclick="guardar()"
	  $("#pimgJuego").change(function(){
	     // readURL(this);
	  });*/
	  	
	  
	  $(':input[type=file]').change( function(event) {
	  	
	  	var tmppath = URL.createObjectURL(event.target.files[0]);
	  	$(this).next("img").attr('src',tmppath);
	  });
  </script>
</body>
</html>