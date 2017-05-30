package vista;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TiendaServlet
 */
@WebServlet("/tiendaVista")
public class TiendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	    response.setContentType("text/html;carset=UTF-8");
	    PrintWriter out = response.getWriter();
	    try{
	    	out.println("<!DOCTYPE html>");
	    	out.println("<head>");
	    	out.println("<title> Servlet Tienda </title>");
	    	out.println("</head>");
	    	out.println("<body>");
	    	out.println("<h1> Servlet Tienda at "+request.getContextPath());
	    	out.println("</body>");
	    	out.println("</html>");
	    }catch(Exception e){
	    	out.close();
	    }
	}
    public TiendaServlet() {
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
