package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.DAO;
import modelo.UserBean;
import modelo.WellKnownAttributes;


@WebServlet("/verificarUsuarioLogin")
public class VerificarUsuarioLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
     



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				response.setContentType("text/html");
	
				UserBean userBean = new UserBean(request.getParameter("user_login"),request.getParameter("pass_login"));
								
				
				request.setAttribute(WellKnownAttributes.SESSION_BEAN, userBean);
				
			
				DAO userDAO = new DAO();
				boolean areCredentialsValid = userDAO.AreValidCredentials(userBean);
				
		
				if (areCredentialsValid) {
					 RequestDispatcher requestDispatcher=request.getRequestDispatcher("DetalleJuego.jsp");  
					 requestDispatcher.forward(request, response);  
				}else{
					RequestDispatcher requestDispatcher=request.getRequestDispatcher("BibliotecaJuegosUsuario.jsp");  
					requestDispatcher.forward(request, response);
				}
	}
	
	
	@Override  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
        doPost(req, resp);  
    }

}
