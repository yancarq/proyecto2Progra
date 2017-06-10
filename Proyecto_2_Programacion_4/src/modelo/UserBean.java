package modelo;

import java.util.ArrayList;
import java.util.List;

public class UserBean {
	private String usuario;
	private String contrasenia;
	private String correo;
	private String imagen;
	private String privilegio;
	private String nombre;
	private String direccion;
	
	public UserBean(){}
	
	public UserBean(String usuario, String contrasenia, String correo, String imagen) {
		super();
		this.usuario = usuario;
		this.contrasenia = contrasenia;
		this.correo = correo;
		this.imagen = imagen;
	}
	
	public UserBean(String usuario, String contrasenia) {
		super();
		this.usuario = usuario;
		this.contrasenia = contrasenia;
	}

	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = "Recursos/Perfiles/"+imagen;
	}

	public String getPrivilegio() {
		return privilegio;
	}

	public void setPrivilegio(String privilegio) {
		this.privilegio = privilegio;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
}
