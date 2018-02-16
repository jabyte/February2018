package ng.transnova.servlets;

import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import ng.transnova.beans.StationFacade;
import ng.transnova.beans.TicketFacade;
import ng.transnova.models.Station;
import ng.transnova.models.Ticket;

@WebServlet(name = "TicketController", urlPatterns = {"/booking"})
public class TicketServlet extends HttpServlet
{
	@EJB
	TicketFacade ticketFacade;

	@EJB
	StationFacade stationFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("Payments", ticketFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/tickets.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			String source = (String) request.getParameter("source");
			String destination = (String) request.getParameter("destination");
			String departureDate = (String) request.getParameter("departure_date");
			String departureTime = (String) request.getParameter("departure_time");

			Station srcStation = stationFacade.find(source);
			Station desStation = stationFacade.find(destination);
			String[] dt = departureDate.split("-");

			Date depDate = new Date(Integer.parseInt(dt[2]), Integer.parseInt(dt[1]), Integer.parseInt(dt[0]));

			Ticket ticket = new Ticket();

			ticket.setSource(srcStation);
			ticket.setDestination(desStation);
			ticket.setDateBooked(depDate);
			ticket.setDepartureTime(departureTime);

			ticketFacade.create(ticket);
			request.getRequestDispatcher("WEB-INF/views/responses/success.jsp").forward(request, response);
		} catch (EJBException e) {
			@SuppressWarnings("ThrowableResultIgnored")
			Exception cause = e.getCausedByException();
			if (cause instanceof ConstraintViolationException) {
				@SuppressWarnings("ThrowableResultIgnored")
				ConstraintViolationException cve = (ConstraintViolationException) e.getCausedByException();
				for (Iterator<ConstraintViolation<?>> it = cve.getConstraintViolations().iterator(); it.hasNext();) {
					ConstraintViolation<? extends Object> v = it.next();
					System.err.println(v);
					System.err.println("==>>" + v.getMessage());
				}
			}
//			Assert.fail("ejb exception");
		} catch (Exception e) {
			System.out.println(e.getCause());
			System.out.println(e.getMessage());

			request.setAttribute("error", "Cause: " + e.getCause() + "\n\n" + e.getMessage());
			request.getRequestDispatcher("WEB-INF/foul.jsp").forward(request, response);
		}
	}
}
