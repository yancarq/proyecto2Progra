package controlador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.WellKnownAttributes;

/**
 * Servlet implementation class SalirUsuario
 */
@WebServlet("/salirUsuarioControladora")
public class SalirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 //Ya sea que el método sea por GET o POST, cerraremos la sesion.

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		// removeve los atributos que identifican al usuario de la sesión
		// invalida todas lsa entradas de esta sessión
		request.removeAttribute(WellKnownAttributes.SESSION_BEAN);
		request.getSession().invalidate();
		
		// redirecciona hacia 
		
		RequestDispatcher rd= getServletContext().getRequestDispatcher("/validacionSessionExista"); 
		rd.include(request, response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
