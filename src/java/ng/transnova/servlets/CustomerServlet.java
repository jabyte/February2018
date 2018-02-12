package ng.transnova.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.CustomerFacade;
import ng.transnova.models.Customer;

@WebServlet(name = "CustomerController", urlPatterns = {"/customers"})
public class CustomerServlet extends HttpServlet
{
	@EJB
	CustomerFacade customerFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Customer> customers = customerFacade.findAll();
		request.setAttribute("customers", customers);
		request.getRequestDispatcher("WEB-INF/views/customer/dashboard.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}

	private void printResponse(HttpServletResponse response) throws IOException
	{
		Template.printHeader(response, "Transnova Administrative Panel | Customers");
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			out.println("<h2></h2>");

			out.println("<table>\n"
					+ "			<tr>\n"
					+ "				<th>Customer ID</th>\n"
					+ "				<th>Phone Number</th>\n"
					+ "				<th>First Name</th>\n"
					+ "				<th>Middle Name</th>\n"
					+ "				<th>Last Name</th>\n"
					+ "				<th>Edit</th>\n"
					+ "				<th>Delete</th>\n"
					+ "			</tr>");

			customerFacade.findAll().forEach((Customer customer) -> {
				out.println("<tr>");
				out.println("<td>" + customer.getCustomerId() + "</td>");
				out.println("<td>" + customer.getPhoneNumber() + "</td>");
				out.println("<td>" + customer.getFirstName() + "</td>");
				out.println("<td>" + customer.getMiddleName() + "</td>");
				out.println("<td>" + customer.getLastName() + "</td>");
				out.println("<td><a href=\"#\">Edit</a></td>");
				out.println("<td><a href=\"#\">Delete</a></td>");
				out.println("</tr>");
			});
		}
	}
}
