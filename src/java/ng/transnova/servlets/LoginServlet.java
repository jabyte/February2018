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
		try {
			String phoneNumber = (String) request.getParameter("phoneNumber");
			String password = Customer.getSHA512SecurePassword((String) request.getParameter("password"));
			Customer customer = customerFacade.findByLoginDetails(phoneNumber, password);

			request.getSession().setAttribute("customer", customer);
			request.setAttribute("customer", customer);
			request.getSession().setMaxInactiveInterval(600);
			request.getRequestDispatcher("WEB-INF/views/customer/dashboard.jsp").forward(request, response);

		} catch (Exception e) {
			request.setAttribute("error", "Username or password incorrect.");
//			request.setAttribute("error", e.getMessage() + "\n" + e.getCause());
			request.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(request, response);
		}
	}
}
