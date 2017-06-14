package Clases;

public class Articulo {
	private int idJuego;
	private int cantidad;
	
	public Articulo(){}

	public Articulo(int idJuego, int cantidad) {
		super();
		this.idJuego = idJuego;
		this.cantidad = cantidad;
	}
	public int getIdJuego() {
		return idJuego;
	}
	public void setIdJuego(int idJuego) {
		this.idJuego = idJuego;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	
}
