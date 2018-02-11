package ng.transnova.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.models.Customer;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet
{
	private Customer customer;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//customer = customerFacade.find(customer.getCustomerId());
		//request.setAttribute("Customer", customerFacade.find(this.customer));
	}
}
