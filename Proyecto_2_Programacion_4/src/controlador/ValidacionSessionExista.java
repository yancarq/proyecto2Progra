package controlador;

import java.io.IOException;
import java.io.PrintWriter;

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
@WebServlet("/validacionSessionExista")
public class ValidacionSessionExista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

	    PrintWriter out = response.getWriter();
	    try{
	    	
	    	UserBean bean = (UserBean) request.getAttribute(WellKnownAttributes.SESSION_BEAN);
	    	
	    	try{
		    	if(!bean.getUsuario().equals(null)){
		    	}else{
		    		response.sendRedirect("index.jsp");
		    	}
	    	}catch(Exception e){
	    		response.sendRedirect("index.jsp");
	    		//out.println("alert(\"NO SE PUDO INGRESAR A LA PAGINA, NECESITA INICIAR SESSION\")");
	    	}
	    	
	    }catch(Exception e){
	    	out.close();
	    }
	}
    public ValidacionSessionExista() {
    	
    	
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
