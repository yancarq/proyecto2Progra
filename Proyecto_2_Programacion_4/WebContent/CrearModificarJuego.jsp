<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
    <script src="js/jquery.min.js"></script>
    <title>Crear/Modificar Juego</title>
    <script>
        function guardar(){
            var confirmar = confirm("¿Seguro que los datos ingresados estan corrector?");
            if(confirmar === true)
                alert("Los datos se guardaron satisfactoriamente");
        }
        
      /*   $("#imgJuego1").change(function(){
        	readURL(this);
        });*/
       /* var emailCorrecto=/\w[\w\d]+@\w+\.\w+/;
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
                /*$("#registrar-modal").html("data-dismiss=modal");
              }
               


          });
              

        });*/
  
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
                        <div class="col-md-6">
                            Nombre del Juego: <br>
                            <input type="text" class="form-control" size="80" value="" id="nombre_juego"> 
                        </div>
                        <div class="col-md-2">
                            Precio: <br>
                            <input type="text" class="form-control" id="precio_juego" placeholder="Dolares">
                        </div>
                        <div class="col-md-2">
                            Rebaja: <br>
                            <input type="text" class="form-control" id="rebaja_juego">
                        </div>
                      
                    </div>
                    <br/>
                    <div class="row">
                    	  <div class="col-md-3" align="left"> 
                        	Imagen Princial<br/>
                        	<input type="file" id="pimgJuego" name="File1" accept="image/gif, image/jpeg, image/png">      
                        	<img id="primJ" name="primJ" src=""  class="img1" height="100px" width="100px"/>
                          </div>
                          <div class="col-md-4" align="center">
                          <p align="right"> Inserte 4 Imagenes Preview del Juego</p><br/>
                          
                           <input type="file" id="imgJuego1" accept="image/gif, image/jpeg, image/png" >
                           <img id="juego1" src="" alt="imagen1" class="img1" height="100px" width="100px"/>
                           <br/>
                           <input type="file" id="imgJuego2" accept="image/gif, image/jpeg, image/png">
                           <img id="juego2" src="" alt="imagen2" class="img1" height="100px" width="100px"/>
                          </div>
                          <br/>
                       	  <div class="col-md-4" align="right">
                       	  <br/>
                       	  <br/>
                       	    <input type="file" id="imgJuego3" accept="image/gif, image/jpeg, image/png" >
                       	    <img id="juego3" src="" alt="imagen3" class="img1" height="100px" width="100px"/>
                       	    <br/>
                            <input type="file" id="imgJuego4" accept="image/gif, image/jpeg, image/png" >
                       	    <img id="juego4" src="" alt="imagen4" class="img1" height="100px" width="100px"/>
                       	  </div>
                    
                    
                    </div>
                    Argumento: <br>
                    <textarea class="form-control" name="argumentoJuego" rows="10" cols="40" id="argumento_juego">
                    </textarea>
                    Etiquetas: <br>
                    <input type="text" class="form-control" size="80" value="" id Etiquetas>
                    <div class="row">
                        <div class="col-md-6">
                            Requerimiento Minimo: <br>
                            <textarea class="form-control" name="argumentoJuego" rows="10" cols="40" required="required">
                            </textarea>
                        </div>
                        <div class="col-md-6">
                            Requerimiento Recomendable: <br>
                            <textarea class="form-control" name="argumentoJuego" rows="10" cols="40" required="required">
                            </textarea>
                        </div>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-default pull-left" onclick="guardar()"><span class="glyphicon glyphicon-floppy-disk"> Guardar Cambios</span></button>
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

  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript">
	 /* function readURL(input){
	  	if (input.files && input.files[0]) {
	          var reader = new FileReader();
	          
	          reader.onload = function (e) {
	              $('#primJ').attr('src', e.target.result);
	          }
	          reader.readAsDataURL(input.files[0]);
	       }
	  }
	  $("#pimgJuego").change(function(){
	      readURL(this);
	  });*/
	  	
	  
	  $(':input[type=file]').change( function(event) {
	  	
	  	var tmppath = URL.createObjectURL(event.target.files[0]);
	  	$(this).next("img").attr('src',tmppath);
	  });
  </script>

</body>
</html>