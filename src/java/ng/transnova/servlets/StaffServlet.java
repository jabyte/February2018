package ng.transnova.servlets;

import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.StaffFacade;

@WebServlet(name = "StaffController", urlPatterns = "/staffs")
public class StaffServlet extends HttpServlet
{
	@Inject
	StaffFacade staffJFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//request.setAttribute("Staffs", staffJFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/staffs.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
