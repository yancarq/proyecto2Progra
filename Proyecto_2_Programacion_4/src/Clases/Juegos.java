package Clases;

public class Juegos {
	private int id_juego;
	private String nombre_juego;
	private String  img_juegos;
    private String genero_juego;
    private float precio_juego;
    private String argumento_juego;
    private String requisitos_minimos_juego;
    private String requisitos_recomendados_juego;
    private String fecha_creacion_juego;
    private String fecha_lanzamiento_juego;
    
     public Juegos(int id_juego, String nombre_juego, String img_juegos, String genero_juego, float precio_juego,
			String argumento_juego, String requisitos_minimos_juego, String requisitos_recomendados_juego,
			String fecha_creacion_juego, String fecha_lanzamiento_juego) {

		this.id_juego = id_juego;
		this.nombre_juego = nombre_juego;
		this.img_juegos = img_juegos;
		this.genero_juego = genero_juego;
		this.precio_juego = precio_juego;
		this.argumento_juego = argumento_juego;
		this.requisitos_minimos_juego = requisitos_minimos_juego;
		this.requisitos_recomendados_juego = requisitos_recomendados_juego;
		this.fecha_creacion_juego = fecha_creacion_juego;
		this.fecha_lanzamiento_juego = fecha_lanzamiento_juego;
	}
	public Juegos(){
		
	}
    
    
	public int getId_juego() {
		return id_juego;
	}
	public void setId_juego(int id_juego) {
		this.id_juego = id_juego;
	}
	public String getNombre_juego() {
		return nombre_juego;
	}
	public void setNombre_juego(String nombre_juego) {
		this.nombre_juego = nombre_juego;
	}
	public String getImg_juegos() {
		return img_juegos;
	}
	public void setImg_juegos(String img_juegos) {
		this.img_juegos = img_juegos;
	}
	public String getGenero_juego() {
		return genero_juego;
	}
	public void setGenero_juego(String genero_juego) {
		this.genero_juego = genero_juego;
	}
	public float getPrecio_juego() {
		return precio_juego;
	}
	public void setPrecio_juego(float precio_juego) {
		this.precio_juego = precio_juego;
	}
	public String getArgumento_juego() {
		return argumento_juego;
	}
	public void setArgumento_juego(String argumento_juego) {
		this.argumento_juego = argumento_juego;
	}
	public String getRequisitos_minimos_juego() {
		return requisitos_minimos_juego;
	}
	public void setRequisitos_minimos_juego(String requisitos_minimos_juego) {
		this.requisitos_minimos_juego = requisitos_minimos_juego;
	}
	public String getRequisitos_recomendados_juego() {
		return requisitos_recomendados_juego;
	}
	public void setRequisitos_recomendados_juego(String requisitos_recomendados_juego) {
		this.requisitos_recomendados_juego = requisitos_recomendados_juego;
	}
	public String getFecha_creacion_juego() {
		return fecha_creacion_juego;
	}
	public void setFecha_creacion_juego(String fecha_creacion_juego) {
		this.fecha_creacion_juego = fecha_creacion_juego;
	}
	public String getFecha_lanzamiento_juego() {
		return fecha_lanzamiento_juego;
	}
	public void setFecha_lanzamiento_juego(String fecha_lanzamiento_juego) {
		this.fecha_lanzamiento_juego = fecha_lanzamiento_juego;
	}
    
    
}
