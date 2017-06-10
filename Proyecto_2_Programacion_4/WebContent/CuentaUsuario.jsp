<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
<%	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="UTF-8">
    <title><%bean.getUsuario(); %></title>
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
            
            <!-- ---------------------AQUI INICIA LO QUE HAY QUE HACER DE FORMA DINAMICA------------------------------------->
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""><img src=<%try{out.println(bean.getImagen());}catch(Excetion e){response.sendRedirect("/paginaErrorVista");} %> class="img-circle" width="19"><%try{ out.println(bean.getUsuario()); }catch(Exception e){response.sendRedirect("/paginaErrorVista");}%></a>
                    <ul>
                        <li><a href="mi_cuenta_yancarlos.html"><span class="glyphicon glyphicon-user"> Mi cuenta</span></a></li>
                        <li><a href="carrito.html"><span class="glyphicon glyphicon-shopping-cart"> Carrito</span></a></li>
                    </ul>
                </li>
                <li><a href="">|</a></li>
                <li><a href="salirUsuarioControladora">Salir</a></li>
            </ul>
            <!-- ---------------------HASTA AQUI ------------------------------------------------------------------------------------>
        </div>      
        </div>
    </nav>

    <div class="container" >
        <section class="row">
            <div class="col-md-9 " id="izquierda">
                <br>
                <!-- ---------------------AQUI INICIA LO QUE HAY QUE HACER DE FORMA DINAMICA------------------------------------->
                <font face="arial" color="black"size="4">
                    <span class="glyphicon glyphicon-user"> Nombre:</span><br>
                        <input type="text" class=" form-control" value="Yancarlos">
                    <br>
                    <span class="glyphicon glyphicon-user"> Primero Apellido:</span><br>
                        <input type="text" class=" form-control" value="Retana">
                    <br>
                    <span class="glyphicon glyphicon-user"> Segundo Apellido:</span><br>
                        <input type="text" class=" form-control" value="Quesada">
                    <br>
                    <span class="glyphicon glyphicon-envelope"> Correo:</span><br>
                        <input type="text" class="form-control" aria-describedby="basic-addon1" value="yancarlosrq@gmail.com">
                    <br>
                    <form method="post" action="accion.php" enctype="multipart/form-data">
                        Ingresa el archivo:
                        <input name="imagen" type="file" />
                    </form>
                    <br>
                    <span class="glyphicon glyphicon-lock"> 
                        Contraseña: 
                        <button type="button" class=" button btn-default btn-sm"><span>Cambiar</span></button>
                    </span>
                    <br>
                    <br>
                    <button align="right" type="button" class="glyphicon glyphicon-ok button btn-default btn-sm"><span> Guardar Cambios</span></button>
                    <br>
                    <br>
                </font>
                <!-- ---------------------HASTA AQUI ------------------------------------------------------------------------------------>       
            </div>

            <aside class="col-md-3 " id="derecha">
                <ul>
                    <li style="padding-top:5px;" align="center"><a href="carrito.html" type="button" class="btn-block button btn-default btn-sm"><span>Información de Pagos</span></a></li>
                    <li style="padding-top:5px;" align="center"><a href="mi_cuenta_yancarlos.html" type="button" class="btn-block button btn-default btn-sm"><span>Detalles</span></a></li>
                    <li style="padding-top:5px;" align="center"><a href="" type="button" class="btn-block button btn-default btn-sm"><span>Preferencias</span></a></li>    
                </ul>
            </aside>

        </section>
    </div>
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>