package ng.transnova.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.AdministratorFacade;

@WebServlet(name = "AdministratorController", urlPatterns = {"/administrators"})
public class AdministratorServlet extends HttpServlet
{
	@EJB
	AdministratorFacade administratorFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("Administrators", administratorFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/administrators.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
