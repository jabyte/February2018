package ng.transnova.servlets;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.CustomerFacade;
import ng.transnova.beans.PaymentFacade;
import ng.transnova.beans.TicketFacade;
import ng.transnova.models.Customer;
import ng.transnova.models.Payment;
import ng.transnova.models.Ticket;

@WebServlet(name = "CustomerController", urlPatterns = {"/customers"})
public class CustomerServlet extends HttpServlet
{
	@EJB
	CustomerFacade customerFacade;

	@EJB
	TicketFacade ticketFacade;

	@EJB
	PaymentFacade paymentFacade;

	@EJB
	EntityManager em;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Customer customer = em.createNamedQuery("Customer.findByPhoneNumber", Customer.class).getSingleResult();//customerFacade.find(phoneNumber);
		List<Payment> payments = paymentFacade.findAll();
		List<Ticket> tickets = ticketFacade.findAll();
//		request.setAttribute("customer", customer);
//		request.setAttribute("payments", payments);
//		request.setAttribute("tickets", tickets);
//		request.setAttribute("password", password);
		request.getRequestDispatcher("WEB-INF/views/customer/dashboard.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
