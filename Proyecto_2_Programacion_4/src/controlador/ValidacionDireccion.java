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

import modelo.UserBean;
import modelo.WellKnownAttributes;

/**
 * Servlet implementation class ValidacionSessionExista
 */
@WebServlet("/validacionDireccion")
public class ValidacionDireccion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		System.out.println("VALIDACIONES");
	    PrintWriter out = response.getWriter();
	    try{
	    	System.out.println("VALIDACIONES");
	    	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);
	    	
	    	try{
		    	if(!bean.getDireccion().equals("biblioteca")){
		    		RequestDispatcher requestDispatcher = request.getRequestDispatcher("BibliotecaJuegosUsuario.jsp");  
					requestDispatcher.forward(request, response);
		    	}else{
		    		out.println(request.getHeader("Referer")+"ERROR");
		    	}
	    	}catch(Exception e){
	    		response.sendRedirect("/paginaErrorVista");
	    	}
	    	
	    }catch(Exception e){
	    	out.close();
	    }
	}
    public ValidacionDireccion() {
    	
    	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
		System.out.println("VALIDACIONES GET");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
		System.out.println("VALIDACIONES");
	}

}
