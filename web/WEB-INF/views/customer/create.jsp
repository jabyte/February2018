<%@include file="../../jspf/header.jspf" %>

<div class="row">
	<h1 class="title-bar-title"></h1>
</div>

<div class="grid-x grid-padding-x">

	<div class="large-4 medium-4 cell medium-pull-2"></div>

	<div class="large-4 medium-4 cell">
		<div style="height: 70px;"></div>
		<h4 class="title-bar-title middle">SIGN UP</h4>
		<hr>
		<%
			if (request.getAttribute("error") != null) {
				out.print("<div style=\"text-align: center; color: red;\">");
				out.print((String) request.getAttribute("error"));
				out.print("<hr>");
				out.print("</div>");
			}
		%>
		<form method="post" action="/Transnova/signup">
			<label for="first_name">First Name:</label>
			<input placeholder="First Name" type="text" name="first_name">

			<label for="middle_name">Middle Name:</label>
			<input placeholder="Middle Name" type="text" name="middle_name">

			<label for="last_name">Last Name:</label>
			<input placeholder="Last Name" type="text" name="last_name">

			<label for="phone_number">Phone Number:</label>
			<input placeholder="Phone Number" type="text" name="phone_number">

			<label for="password">Password:</label>
			<input placeholder="Password" type="password" name="password">

			<label for="re-password">Confirm Password:</label>
			<input placeholder="Password" type="password" name="re-password">

			<input class="button expanded" value="Sign up" type="submit">
			<a href="login" class="expanded">Already have an account? Login.</a>

		</form>
	</div>

	<div class="large-4 medium-4 cell medium-pull-2"></div>

</div>
<div class="js-off-canvas-exit"></div>
<%@include file="../../jspf/footer.jspf" %>