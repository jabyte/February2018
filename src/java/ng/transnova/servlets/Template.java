package ng.transnova.servlets;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

class Template
{
	static String printHeader(HttpServletResponse response, String pageTitle) throws IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		try {
			StringBuilder responseBuilder = new StringBuilder();

			responseBuilder.append("<!DOCTYPE html>");
			responseBuilder.append("<html>");
			responseBuilder.append("<head>");
			responseBuilder.append("<title>");
			responseBuilder.append(pageTitle);
			responseBuilder.append("</title>");

			responseBuilder.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
			responseBuilder.append("<meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">");
			responseBuilder.append("<link rel=\"stylesheet\" href=\"web/resources/css/foundation.css\">");

			responseBuilder.append("</head>");
			responseBuilder.append("<body>");

			return responseBuilder.toString();
		} catch (Exception e) {
			return "";
		}
	}

	static String printFooter(HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		try {
			StringBuilder responseBuilder = new StringBuilder();

			responseBuilder.append("</body>");
			responseBuilder.append("</html>");

			return responseBuilder.toString();
		} catch (Exception e) {
			return "";
		}
	}
}
