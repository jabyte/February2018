package ng.transnova.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.StationFacade;
import ng.transnova.beans.TicketFacade;
import ng.transnova.models.Station;
import ng.transnova.models.Ticket;

@WebServlet(name = "BookingServlet", urlPatterns = {"/booking"})
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
		String source = (String) request.getParameter("source");
		String destination = (String) request.getParameter("destination");
		String departureDate = (String) request.getParameter("departure_date");
		String departureTime = (String) request.getParameter("departure_time");

		Station srcStation = stationFacade.findStationByName(source);
		Station desStation = stationFacade.findStationByName(destination);

		String[] dt = departureDate.split("-");

		Date depDate = new Date(Integer.parseInt(dt[2]), Integer.parseInt(dt[1]), Integer.parseInt(dt[0]));

		Ticket ticket = new Ticket();

		ticket.setSource(srcStation);
		ticket.setDestination(desStation);
		ticket.setDateBooked(depDate);
		ticket.setDepartureTime(departureTime);

		System.out.println(departureDate);
		System.out.println(depDate);

		ticketFacade.create(ticket);
		request.getRequestDispatcher("WEB-INF/views/responses/success.jsp").forward(request, response);
	}
}
