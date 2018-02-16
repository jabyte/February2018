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
		try {
			String firstName = request.getParameter("first_name");
			String middleName = request.getParameter("middle_name");
			String lastName = request.getParameter("last_name");
			String phoneNumber = request.getParameter("phone_number");
			String password = request.getParameter("password");
			String repassword = request.getParameter("repassword");

			String error = "Only middle name is allowed to be empty.";

			if (firstName.equals("") || lastName.equals("") || phoneNumber.equals("") || password.equals("") || repassword.equals("")) {
				request.setAttribute("error", error);
				request.getRequestDispatcher("WEB-INF/views/customer/create.jsp").forward(request, response);
			} else {
				if (!password.equals(repassword)) {
					request.setAttribute("error", "The two password did not march!");
					request.getRequestDispatcher("WEB-INF/views/customer/create.jsp").forward(request, response);
				} else {
					Customer customer = new Customer();
					customer.setFirstName(firstName);
					customer.setMiddleName(middleName);
					customer.setLastName(lastName);
					customer.setPhoneNumber(phoneNumber);
					customer.setPassword(Customer.getSHA512SecurePassword(password));

					customerFacade.create(customer);

					request.getRequestDispatcher("WEB-INF/views/responses/success.jsp").forward(request, response);
				}
			}
		} catch (IOException | ServletException e) {
			response.getWriter().println(e.getCause());
			response.getWriter().println(e.getMessage());
		}
	}
}
