<%--
    Document   : login
    Created on : Feb 11, 2018, 4:25:29 PM
    Author     : jabyte
--%>
<%@include file="../../jspf/header.jspf" %>

<div class="row"></div>

<div class="grid-x grid-padding-x">
	<%
//		String message = (String) request.getAttribute("error");
//		if (!message.equals("")) {
//			out.print("<div class=\"callout\">");
//			out.print(message);
//			out.print("</div>");
//		}
	%>

	<div class="large-4 medium-4 cell medium-pull-2"></div>

	<div class="large-4 medium-4 cell">
		<h4>LOGIN</h4>
		<hr>

		<form method="post" action="/Transnova/signup">
			<label for="username">Username:</label>
			<input placeholder="Username or Phone Number" type="text" name="username">

			<label for="password">Password:</label>
			<input placeholder="Password" type="password" name="password">

			<input class="button expanded" value="Sign up" type="submit">

			<div class="grid-x row">
				<div class="large-6 medium-6 cell medium-pull-2">
					<a href="#" class="">Sign up here</a>
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