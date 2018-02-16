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
import ng.transnova.models.Station;

@WebServlet(name = "StationServlet", urlPatterns = {"/stations"})
public class StationServlet extends HttpServlet
{
	@EJB
	StationFacade stationFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		List<Station> stations = (List<Station>) stationFacade.findAll();
		request.setAttribute("stations", stations);
		request.getRequestDispatcher("WEB-INF/views/station/list.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {

//			Station station = new Station();
//			station.setStationId(1000);
//			station.setStationName("Galadimawa");
//			station.setStationAddress("Galadimawa round about.");
//
//			stationFacade.create(station);
			request.getRequestDispatcher("WEB-INF/views/responses/success.jsp").forward(request, response);
		} catch (ServletException servletException) {
			servletException.printStackTrace();
		} catch (IOException ioException) {
			ioException.printStackTrace();
		}
	}
}
