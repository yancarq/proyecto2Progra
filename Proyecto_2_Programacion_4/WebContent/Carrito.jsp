<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.UserBean"%>
<%@ page import="modelo.WellKnownAttributes" %>
<%	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <title>Informacion Pago</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
  
    <script src="js/jquery.js"></script>
    <script src="main.js"></script>
    <script src="js/jquery.min.jss"></script>
    <script src="js/bootstrap.min.js"></script>
  	
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
            <li><a href="redireccionamientoIndex?usuario=<%
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
			 	requestDispatcher.forward(request, response);}%>">Tienda</a></li>
           
            <li><a href="redireccionarBiblioteca?usuario=<%
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
			 	requestDispatcher.forward(request, response);}%>">Biblioteca</a></li>
            </ul>

            <form class="navbar-form navbar-right" id="barraBusqueda">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
            </form>
            
            <ul class="nav navbar-nav navbar-right">
                 <li><a href=""><img src=<%try{
            		out.println(bean.getImagen());
            	}catch(Exception e){
            		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 		requestDispatcher.forward(request, response);
            	} %> class="img-circle" width="19"> <% try{ 
            			out.println(bean.getUsuario());
            	}catch(Exception e){
            		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/paginaErrorVista");  
			 		requestDispatcher.forward(request, response);
			 	}%></a>
			 	<ul class="nav navbar-nav">
            <li><a href="redireccionamientoIndex?usuario=<%
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
			 	requestDispatcher.forward(request, response);}%>">Tienda</a></li>
            
            <li><a href="redireccionarBiblioteca?usuario=<%
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
			 	requestDispatcher.forward(request, response);}%>">Biblioteca</a></li>
            </ul>
                </li>
                <li><a href="">|</a></li>
                 <li><a href="salirUsuarioControladora"><%out.println("Salir");%></a></li>
            </ul>
            
        </div>      
        </div>
    </nav>


  <div class="container" id="carrito" >
  <br/>
   

      <div class="col-md-7" style="margin-left:60px;">
          <div class="panel panel-default ">
              <div class="panel-heading">
                   <h4 align="left" ><span class="glyphicon glyphicon-shopping-cart"></span> Informacion del pago
                     
                    </h4>
              </div>
               <h5 >MÉTODO DE PAGO</h5>
               <br/>
              <div class="panel-body">
                <form>
                     <div class="form-group row">
                          
                            <div class="col-xs-4 ">
                              <label for="metodos" id="lblMetoPag">Seleccione un metodo de pago</label>
                              <select class="form-control " id="metodoPago">
                                      <option>Visa</option>
                                      <option>MasterCard</option>
                                      <option>American Express</option>
                                      <option>Discover</option>
                                      <option>JCB</option>
                               </select>
                          </div>
                              
                      </div>

                      <div class="form-group row">
                         
                           <div class="col-xs-4">
                              <label for="numTarjeta" id="targeta">Numero de tarjeta</label>
                             
                              <input type="text" class="form-control " id="numTarjeta">
                           </div>
                           <label for="fecha" id="lblFechaV" >Fecha Vencimiento</label>
                             <div class="col-xs-2">
                                <select class="form-control " id="mesVencimiento">
                                  <option>01</option>
                                  <option>02</option>
                                  <option>03</option>
                                  <option>04</option>
                                  <option>05</option>
                                  <option>06</option>
                                  <option>07</option>
                                  <option>08</option>
                                  <option>09</option>
                                  <option>10</option>
                                  <option>11</option>
                                  <option>12</option>
                                </select>
                              </div>                                
                              <div class="col-xs-2">
                                    <select class="form-control " id="yearVencimiento">
                                      <option>2017</option>
                                      <option>2018</option>
                                      <option>2019</option>
                                      <option>2020</option>
                                      <option>2021</option>
                                      <option>2022</option>
                                      <option>2023</option>
                                      <option>2024</option>
                                      <option>2025</option>
                                      <option>2026</option>
                                      <option>2027</option>
                                      <option>2028</option>
                                    </select> 
                              </div>
                              <div class="col-xs-4">
                                 <label for="codigoSegu" id="codSegTar">Codigo de Seguridad</label>
                                 <input type="text" class="form-control " id="codigoSegu">
                              </div>
                    </div>
                   <h6>INFORMACIÓN DE FACTURACIÓN</h6>

                   <div class="form-group row">
                     <div class="col-xs-4">
                        <label for="nomFactura" id="lblNomFact">Nombre</label>
                        <input type="text" class="form-control " id="nomFactura">
                      </div>
                      <div class="col-xs-4">
                        <label for="apellidosFactura" id="lblaps">Apellidos</label>
                        <input type="text" class="form-control " id="apellidosFactura">
                      </div>
                      <div class="col-xs-4">
                        <label for="telefonoFactura" id="lbltelefono">Telefono</label>
                        <input type="text" class="form-control " id="telefonoFactura">
                      </div>
                   </div>
                   
                   <div class="form-group row">
                      <div class="col-xs-4">
                        <label for="direccionFactura" id="lbldirec">Direccion Facturacion</label>
                        <input type="text" class="form-control " id="direccionFactura">
                      </div>
                      <div class="col-xs-4">
                        <label for="codPostalFactura" id="lblcodpost">Codigo Postal o zip</label>
                        <input type="text" class="form-control " id="direccionFactura">
                      </div>
                   </div>
                   <div class="form-group row">
                      <div class="col-xs-4">
                        <label for="paisFactura" id="lblfactura">Pais</label>
                        <input type="text" class="form-control " id="paisFactura">
                      </div>
                      <div class="col-xs-4">
                        <label for="provinciaFactura" id="lblprovincia">Provincia</label>
                        <input type="text" class="form-control " id="provinciaFactura">
                      </div>
                    
                   </div>
                   <a class="btn btn-danger  pull-left" href="index.html" role="button" ><span class="glyphicon glyphicon-remove"> Cancelar</span></a>
                   <button type="button" class="btn btn-primary pull-right " data-toggle="modal" data-target="#compra-modal" id="btnComprar"><span class="glyphicon glyphicon-piggy-bank"> Confirmar</span></button>
                </form>
              </div>
          </div>
        </div>

        <aside class="col-md-3 " id="derecha" style="margin-top: 0px; margin-left: 140px;">
                <ul>
                    <li style="padding-top:5px;" align="center"><a href="carrito.html" type="button" class="btn-block button btn-default btn-sm"><span>Información de Pagos</span></a></li>
                    <li style="padding-top:5px;" align="center"><a href="mi_cuenta_yancarlos.html" type="button" class="btn-block button btn-default btn-sm"><span>Detalles</span></a></li>
                    <li style="padding-top:5px;" align="center"><a href="" type="button" class="btn-block button btn-default btn-sm"><span>Preferencias</span></a></li>    
                </ul>
            </aside>
    </div>
  </div>



<!--role="dialog"--> 
   <!--Modal Compra-->
  <strong><div class="modal fade" id="compra-modal" data-backdrop="static" data-keyboard="false" ></strong>
      <div class="modal-dialog">
            <div class="modal-content">
                 <div class="modal-body" style="padding:20px 50px;">
                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                   <h2><span class="glyphicon glyphicon-shopping-cart"></span> Realizar Compra</h2>
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
                              <br/>
                              <div class="form-group row">
                                  <div class="col-xs-6">
                                    <label>se cargara al metodo de pago ingresado XXXX-XXXXX-XXXX</label>
                                  </div>
                                    <div class="col-xs-6">
                                    <label > </label>
                                  </div>
                                
                              </div>
                            </div>
                           </div>
                        </div>
                   </form>

                 </div>
                 <div class="modal-footer">
                   <button type="submit" class="btn btn-primary btn-default pull-right" data-dismiss="modal" id="btnPagar"><span class="glyphicon glyphicon-check"> Pagar </span></button>
                   <a class="btn btn-danger  pull-left" href="index.html" role="button" ><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
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

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>