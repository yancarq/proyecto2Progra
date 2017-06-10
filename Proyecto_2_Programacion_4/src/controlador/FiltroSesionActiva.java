package controlador;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class FiltroSesionActiva
 */
@WebFilter("/FiltroSesionActiva")
public class FiltroSesionActiva implements Filter {

	/**
	 * Default constructor.
	 */
	public FiltroSesionActiva() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("FILTER");
		// Cargamos la sesion
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);
		Object usuario = null;
		// Preguntamos por un objeto en la sesion
		if (session != null)
			usuario = session.getAttribute("nombre");
		if (session == null || usuario == null)
			System.out.println("Session Invalid");
		else
			System.out.println("Session valid");
		if (session == null || usuario == null) {// if we have no session
			try {
				httpRequest.getRequestDispatcher("/timeout.html").forward(request, response);
				return;
			} catch (ServletException e) {
			} catch (IOException e) {
			}
		}
		try {
			chain.doFilter(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}


