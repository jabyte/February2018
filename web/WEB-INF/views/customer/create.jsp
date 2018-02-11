<%@include file="../../jspf/header.jspf" %>

<h3>SIGN UP</h3>
<hr>

<div class="grid-x grid-padding-x">
	<div class="large-7 medium-7 cell medium-pull-2">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>

	<div class="large-5 medium-5 cell medium-push-2">
		<form method="post" action="/Transnova/signup">
			<label for="first_name">First Name:</label>
			<input placeholder="First Name" type="text" id="first_name">

			<label for="middle_name">Middle Name:</label>
			<input placeholder="Middle Name" type="text" id="middle_name">

			<label for="last_name">Last Name:</label>
			<input placeholder="Last Name" type="text" id="last_name">

			<label for="phone_number">Phone Number:</label>
			<input placeholder="Phone Number" type="text" id="phone_number">

			<input class="button" value="Submit" type="submit">
		</form>
	</div>
</div>
<div class="js-off-canvas-exit"></div>
<%@include file="../../jspf/footer.jspf" %>