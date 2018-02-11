package ng.transnova.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.TicketFacade;

@WebServlet(name = "TicketController", urlPatterns = {"/tickets"})
public class TicketServlet extends HttpServlet
{
	@EJB
	TicketFacade ticketFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("Payments", ticketFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/tickets.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
