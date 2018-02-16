<%--
    Document   : foul
    Created on : Feb 15, 2018, 10:04:26 AM
    Author     : jabyte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ERROR!!!</h1>
		<%
			if (request.getAttribute("error") != null) {
				out.print("<div style=\"text-align: center; color: red;\">");
				out.print((String) request.getAttribute("error"));
				out.print("</div>");
				out.print("<br>");
				out.print("<br>");
			}
		%>
    </body>
</html>
