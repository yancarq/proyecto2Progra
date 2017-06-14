package controlador;

import java.util.ArrayList;

import Clases.Imagenes;
import Clases.Juegos;
import modelo.modeloJuego;

public class ControladorJuegos {
	public String getJuegos(){
		System.out.println("hoalaa");
		modeloJuego mj = new modeloJuego();
		String htmlcode="";
		for(Juegos juego: mj.geatAllJuegos()){
			htmlcode="<div class=\"container-fluid\" id=\"main_juegos\">\n"+
			    "<div class=\"row\">\n"+
			
			     " <aside>\n"+
			       " <div class=\"col-md-2 product-small2\" align=\"center\">\n"+
			       	"<h4 class=\"text-center\">\n "+
			       	"<span class=\"label label-success\">"+juego.getNombre_juego()+"</span>\n"+
			        "</h4>\n"+
			        "<br>\n"+
			        "<img  style=\"float: left; margin-right:10px\"  src=\""+juego.getImg_juegos()+"\" width=\"192\" height=\"180\" class\"img-responsive img-thumbnail\" alt=\"\">\n"+
			        "<font face=\"Comic Sans MS,arial,verdana\" color=\"Lime\">\n"+
			         "<h3>$"+juego.getPrecio_juego()+" USD</h3>\n"+
			       " </font>\n"+
			       " <a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Magia</a>\n"+
			        "<a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Mundo Abierto</a>\n"+
			       " <a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Aventura</a>\n"+
			        "<a href=\"\" class=\"app_tag btn btn-success btn-lg btn-sm\" style=\"\" >Ciencia ficción</a>\n"+
			       " <div class=\"container-fluid\">\n"+
			          "<br>\n"+//agregar pagina
			          "<a class=\"buy_nowa2\" id=\"boton_detalle\" href=\"DetalleJuego.jsp?id="+juego.getId_juego()+"\"><button class=\"button_buy\">Más detalles »</button></a>\n"+
			     "   </div>\n"+
			     " </div>\n"+
			    "  </aside>\n"+
			   " </div>\n"+
			      
				"</div>\n";
			System.out.println(juego.getImg_juegos());
		}
		return htmlcode;
	}
	
	public Juegos getJuegos(int id_juego){
		return new modeloJuego().getJuegos(id_juego);
		
	}
	public ArrayList<Imagenes> getImagenJuego(int id_juego){
		return new modeloJuego().getImagenJuegos(id_juego);
	}
}
