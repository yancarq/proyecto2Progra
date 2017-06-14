<%@page import="Clases.Juegos"%>
<%@page import="controlador.ControladorJuegos"%>
<%@page import="Clases.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
     HttpSession sesion = request.getSession(true);
     ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>


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

     	table {
		    border-collapse: collapse;
		    width: 100%;
		}
		td,h8{
			background-color: #f2f2f2;
		}
		th {
		    background-color: #9DB8B8;
		    color: white;
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
     
      
      
      <div class="collapse navbar-collapse " id="menuOpciones">
        
        <ul class="nav navbar-nav">
          <li><a href="index.jsp">Tienda</a></li>
        </ul>

        <form class="navbar-form navbar-right" id="barraBusqueda">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        
        <ul class="nav navbar-nav navbar-right">
          <li><a href="" data-toggle="modal" data-target="#registrar-modal"> Registrar</a></li>
          <li><a href="" data-toggle="modal" id =""data-target="#login-modal">Ingresar</a></li>
          <!-- CREAR UNA MANERA DE HACER UNA OPCION MAS CON SALIR Y OTRA CON EL NOMBRE PERO SOLO SI HAY UNA SESSION INICIADA -->
        </ul>
       
      </div>
    </div>
    
  </nav>
  <section id="cart-items">
  		<div class="container">
			  <div class="table-responsive cart_info" id="cart-container" >
			  	<table class="table table-condensed" id="shop-table" >
			  		<thead>
			  			<tr class="cart_menu">
			  				<th class="image">Item</td>
			  				<th class="description">Descripcion</td>
			  				<th class="price">Precio</td>
			  				<th class="quantity">Cantidad</td>
			  				<th class="total">Total</td>
			  				<th class=""></td>
			  			</tr>
			  		</thead>
			  		<tbody >
			  					<%ControladorJuegos js =new ControladorJuegos();
			  						float total=0;
			  						if(articulos!=null){
			  							for(Articulo a:articulos){
			  								Juegos juego =js.getJuegos(a.getIdJuego());
			  								total+=a.getCantidad()*juego.getPrecio_juego();
			  							%>
						  					<tr>
						  						<td class="cart-product">
						  								<a href=""><img alt="" src="<%=juego.getImg_juegos()%>" width="120"></a>
						  						</td>
						  						<td class="cart_description">
						  							<h6><a href=""><%=juego.getNombre_juego() %></a></h6>
						  						</td>
						  						<td class="cart_price">
						  							<p>$<%=juego.getPrecio_juego() %></p>
						  						</td>
						  						<td class="cart_quantity">
													<div class="cart_quantity_button">
														<a class="cart_quantity_up" href=""> + </a>
			                                                                        <input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getCantidad()%>" autocomplete="off" size="2">
														<a class="cart_quantity_down" href=""> - </a>
													</div>
												</td>
												<td class="cart_total">
													<p class="cart_total_price">$<%= Math.round(juego.getPrecio_juego()*a.getCantidad()*100)/100%>
													</p>
												</td>
												<td class="cart_delete">
			                                        <span id="idarticulo" style="display:none;"><%= juego.getId_juego()%></span>
			                                        <a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
												</td>
						  					</tr>
			  					<%}}%>
			  		
			  		
			  		</tbody>
			  	</table>
			  		<% if(articulos ==null){ %>
			  			<h8>No hay articulos en el carro</h8>
			  		<%} %>
			  </div>
				<a href="javascript:window.history.go(-2);">Seguir Comprando</a>
			</div>
  	</section>
  
 	<footer>
	      <HR align="left" size="2" width="1310" color="Green" noshade>
	      <p align="center"> <font face="arial" color="white">
	        Esto fue realizado por:<br>
	        Jason F. González García<br>
	        Yancarlos Retana Quesada<br>
	      </font>
	      </p>
    </footer>
 
</body>
</html>