package Clases;

public class Imagenes {
	private int id_imagen;
	private String nombre_juego;
	private String  url_imagen_juego;
	private int id_juego;
	
	public Imagenes(){
		
	}
	public Imagenes(int id_imagen, String nombre_juego, String url_imagen_juego, int id_juego) {
		this.id_imagen = id_imagen;
		this.nombre_juego = nombre_juego;
		this.url_imagen_juego = url_imagen_juego;
		this.id_juego = id_juego;
	}
	public int getId_imagen() {
		return id_imagen;
	}
	public void setId_imagen(int id_imagen) {
		this.id_imagen = id_imagen;
	}
	public String getNombre_juego() {
		return nombre_juego;
	}
	public void setNombre_juego(String nombre_juego) {
		this.nombre_juego = nombre_juego;
	}
	public String getUrl_imagen_juego() {
		return url_imagen_juego;
	}
	public void setUrl_imagen_juego(String url_imagen_juego) {
		this.url_imagen_juego = url_imagen_juego;
	}
	public int getId_juego() {
		return id_juego;
	}
	public void setId_juego(int id_juego) {
		this.id_juego = id_juego;
	}
	
	
}
