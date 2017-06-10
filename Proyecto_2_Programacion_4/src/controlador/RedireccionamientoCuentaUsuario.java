package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.UserBean;
import modelo.WellKnownAttributes;

/**
 * Servlet implementation class RedireccionamientoCuentaUsuario
 */
@WebServlet("/redireccionamientoCuentaUsuario")
public class RedireccionamientoCuentaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);
		String bean = request.getParameter("usuario");

		UserBean userBean = new UserBean(bean,request.getParameter("contrasenia"));
		userBean.setImagen(request.getParameter("imagen"));
		userBean.setNombre(request.getParameter("nombre"));
		userBean.setCorreo(request.getParameter("correo"));
		userBean.setPrivilegio(request.getParameter("privilegio"));
		
		request.setAttribute(WellKnownAttributes.SESSION_BEAN, userBean);
		
		
		try{
			if(bean!=null){
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher("CuentaUsuario.jsp");  
				 requestDispatcher.forward(request, response);  
			}else{
				 RequestDispatcher requestDispatcher = request.getRequestDispatcher("paginaErrorVista");  
				 requestDispatcher.forward(request, response);  
			}
		}catch(Exception e){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("paginaErrorVista");  
			requestDispatcher.forward(request, response);  
		}
		
	}
    public RedireccionamientoCuentaUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
}
