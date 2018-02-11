package ng.transnova.servlets;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ng.transnova.beans.PaymentFacade;

@WebServlet(name = "PaymentController", urlPatterns = {"/payments"})
public class PaymentServlet extends HttpServlet
{
	@EJB
	PaymentFacade paymentFacade;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setAttribute("Payments", paymentFacade.findAll());
		request.getRequestDispatcher("WEB-INF/views/payments.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}
}
