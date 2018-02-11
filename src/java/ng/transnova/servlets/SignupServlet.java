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

@WebServlet(name = "SignupServlet", urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet
{
	@EJB
	CustomerFacade customerFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.getRequestDispatcher("WEB-INF/views/customer/create.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String firstName = request.getParameter("first_name");
		String middleName = request.getParameter("middle_name");
		String lastName = request.getParameter("last_name");
		String phoneNumber = request.getParameter("phone_number");

		String error = "No field can be empty.";

		if (firstName.equals("") || middleName.equals("") || lastName.equals("") || phoneNumber.equals("")) {
			request.setAttribute("empty_field", error);
			request.getRequestDispatcher("WEB-INF/views/customer/create.jsp").forward(request, response);
		} else {
			Customer customer = new Customer();
			customer.setFirstName(firstName);
			customer.setMiddleName(middleName);
			customer.setLastName(lastName);
			customer.setPhoneNumber(phoneNumber);

			customerFacade = new CustomerFacade();
			customerFacade.create(customer);
		}
	}
}
