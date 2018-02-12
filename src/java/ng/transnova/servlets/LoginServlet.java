package ng.transnova.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.CustomerFacade;
import ng.transnova.models.Customer;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet
{
	@EJB
	CustomerFacade customerFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username = (String) request.getAttribute("username");
		String password = (String) request.getAttribute("password");
		Customer customer = customerFacade.find(username, password);

		if (customer != null) {
//			request.getSession();
			request.setAttribute("customer", customer);
		} else {
			request.setAttribute("error", "Username or password incorrect.");
		}
		request.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(request, response);
	}
}
