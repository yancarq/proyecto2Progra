package modelo;

import javax.servlet.RequestDispatcher;

public class DAO {
	public boolean AreValidCredentials(UserBean userbean){
		try{
			if (userbean == null)
				return false;
			//Aqui van los datos extraidos de la base de datos para comparar al usuario que quiere entrar 
			boolean validate = (userbean.getUsuario().equals("admin")  &&  userbean.getContrasenia().equals("123"));
			return validate;
		}catch(Exception e){
			return false;
		}
	}
}
