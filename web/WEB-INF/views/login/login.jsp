<%--
    Document   : login
    Created on : Feb 11, 2018, 4:25:29 PM
    Author     : jabyte
--%>
<%@page import="java.util.logging.Logger"%>
<%@include file="../../jspf/header.jspf" %>

<div class="row"></div>

<div class="grid-x grid-padding-x">
	<div class="large-4 medium-4 cell medium-pull-2"></div>

	<div class="large-4 medium-4 cell">
		<h4 class="title-bar-title">LOGIN</h4>
		<hr>
		<%
			try {
				if (request.getAttribute("error") != null) {
					out.print("<div style=\"text-align: center; color: red;\">");
					out.print((String) request.getAttribute("error"));
					out.print("</div>");
					out.print("<br>");
					out.print("<br>");
				}
			} catch (Exception e) {
				out.print("<div style=\"text-align: center; color: red;\">");
				out.println(e.getMessage());
				out.println("<hr>");
				out.print("</div>");
			}
		%>

		<form method="post" action="/Transnova/login">
			<label for="username">Username:</label>
			<input placeholder="Username or Phone Number" type="text" name="phoneNumber">

			<label for="password">Password:</label>
			<input placeholder="Password" type="password" name="password">

			<input class="button expanded" value="Login" type="submit">

			<div class="grid-x row">
				<div class="large-6 medium-6 cell medium-pull-2">
					<a href="/Transnova/signup" class="">Sign up here</a>
				</div>
				<div class="large-6 medium-6 cell medium-pull-2" style="text-align: right">
					<a href="#" class="">Forgot password?</a>
				</div>
			</div>
		</form>
	</div>

	<div class="large-4 medium-4 cell medium-push-2"></div>
</div>
<%@include file="../../jspf/footer.jspf" %>