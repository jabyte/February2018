package ng.transnova.servlets;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.StationFacade;
import ng.transnova.beans.TicketFacade;
import ng.transnova.models.Ticket;

@WebServlet(name = "BookingServlet", urlPatterns = {"/customer{id}upcomingtrips"})
public class BookingServlet extends HttpServlet
{

	@EJB
	TicketFacade ticketFacade;

	@EJB
	StationFacade stationFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Ticket> tickets = ticketFacade.findAll();
		request.setAttribute("tickets", tickets);
		request.getRequestDispatcher("WEB-INF/views/ticket/tickets.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
