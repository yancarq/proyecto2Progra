package controlador;

import Clases.Juegos;
import modelo.modeloJuego;

public class ControladorJuegos {
	public String getJuegos(){
		modeloJuego mj = new modeloJuego();
		String htmlcode="";
		for(Juegos juego: mj.geatAllJuegos()){
			htmlcode+="<div class=\"container-fluid\" id=\"main_juegos\">\n"+
			    "<div class=\"row\">\n"+
			
			     " <aside>"+
			       " <div class=\"col-md-2 product-small2\" align=\"center\">\n"+
			       	"<h4 class=\"text-center\">\n "+
			       	"<span class=\"label label-success\"> The Witcher 3: Wild Hunt</span>\n"+
			        "</h4>\n"+
			        "<br>\n"+
			        "<img  style=\"float: left; margin-right:10px\"  src=\"Recursos/the_witcher_3.jpg\" width=\"192\" height=\"180\" class\"img-responsive img-thumbnail\" alt=\"\">\n"+
			        "<font face=\"Comic Sans MS,arial,verdana\" color=\"Lime\">\n"+
			         "<h3>$"+juego.getPrecio_juego()+" USD</h3>\n"+
			       " </font>\n"+
			       " <a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Magia</a>\n"+
			        "<a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Mundo Abierto</a>\n"+
			       " <a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Aventura</a>\n"+
			        "<a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Ciencia ficción</a>\n"+
			       " <div class=\"container-fluid\">\n"+
			          "<br>\n"+//agregar pagina
			          "<a class=\"buy_nowa2\" id=\"boton_detalle\" href=\"detalle_the_witcher_3.jsp\"><button class=\"button_buy\">Más detalles »</button></a>\n"+
			     "   </div>\n"+
			     " </div>\n"+
			    "  </aside>\n"+
			   " </div>\n"+
			      
				"</div>\n";
		}
		return htmlcode;
	}
}
