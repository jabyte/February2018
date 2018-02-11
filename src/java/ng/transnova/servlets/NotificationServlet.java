package ng.transnova.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.NotificationFacade;

@WebServlet(name = "NotificationController", urlPatterns = {"/notifications"})
public class NotificationServlet extends HttpServlet
{
	@EJB
	NotificationFacade notificationFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("Notifications", notificationFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/notifications.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
