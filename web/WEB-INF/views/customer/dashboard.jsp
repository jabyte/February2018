<%--
    Document   : dashboard
    Created on : Feb 12, 2018, 11:47:54 AM
    Author     : jabyte
--%>
<%@page import="ng.transnova.models.Customer"%>
<%@page import="ng.transnova.models.Payment"%>
<%@page import="java.util.List"%>
<%@page import="ng.transnova.models.Ticket"%>
<%@include file="../../jspf/header.jspf" %>



<ul class="tabs" data-tabs id="dashboard-tabs">
	<li class="tabs-title is-active"><a href="#profile" aria-selected="true">Profile</a></li>
	<li class="tabs-title"><a data-tabs-target="past_trips" href="#past_trips">Past Trips</a></li>
	<li class="tabs-title"><a data-tabs-target="tickets" href="#tickets">Tickets Booked</a></li>
	<li class="tabs-title"><a data-tabs-target="payments" href="#payments">Payments</a></li>
</ul>
<div class="tabs-content" data-tabs-content="dashboard-tabs">
	<div class="tabs-panel is-active" id="profile">
		<h5>Profile</h5>
		<%
			String password = (String) request.getParameter("password");
			Customer customer = (Customer) request.getAttribute("customer");
			if (customer != null && customer.getPassword().equals(password)) {
				out.print("<ul>");
				out.print("<li>Customer ID: " + customer.getCustomerId().toString() + "</li>");
				out.print("<li>Phone Number: " + customer.getPhoneNumber() + "</li>");
				out.print("<li>First Name: " + customer.getFirstName() + "</li>");
				out.print("<li>Middle Name: " + customer.getMiddleName() + "</li>");
				out.print("<li>Last Name: " + customer.getLastName() + "</li>");
				out.print("</tr>");
				out.print("</ul>");
			}
		%>
	</div>

	<div class="tabs-panel" id="past_trips">
		<h5>Past Trips</h5>
		<table>
			<thead>
			<th>Ticket Number</th>
			<th>Departure Time</th>
			<th>Date Booked</th>
			<th>Source</th>
			<th>Destination</th>
			<th>One Way Ticket</th>
			</thead>
			<%List< Ticket> tickets = (List<Ticket>) request.getAttribute("tickets");
				if (tickets != null) {
					for (Ticket ticket : tickets) {
						String id = ticket.getTicketNumber();
						out.print("<tr>");
						out.print("<td>" + id + "</td>");
						out.print("<td>" + ticket.getDeparcherTime() + "</td>");
						out.print("<td>" + ticket.getDateBooked() + "</td>");
						out.print("<td>" + ticket.getSource().getStationName() + "</td>");
						out.print("<td>" + ticket.getDestination().getStationName() + "</td>");
						out.print("<td>" + ticket.getOnewayTicket() + "</td>");
						out.print("<td><a id=\"" + id + "\" href=\"/Transnova/customer/pastrip/edit/" + id + "\"></a></td>");
						out.print("");
						out.print("</tr>");
					}
				}
			%>
		</table>
	</div>

	<div class="tabs-panel" id="tickets">
		<h5>Tickets</h5>
		<table>
			<thead>
			<th>Ticket Number</th>
			<th>Departure Time</th>
			<th>Date Booked</th>
			<th>Source</th>
			<th>Destination</th>
			<th>One Way Ticket</th>
			</thead>
			<%
				if (tickets
						!= null) {
					for (Ticket ticket : tickets) {
						out.print("<tr>");
						out.print("<td>" + ticket.getTicketNumber() + "</td>");
						out.print("<td>" + ticket.getDeparcherTime() + "</td>");
						out.print("<td>" + ticket.getDateBooked() + "</td>");
						out.print("<td>" + ticket.getSource().getStationName() + "</td>");
						out.print("<td>" + ticket.getDestination().getStationName() + "</td>");
						out.print("<td>" + ticket.getOnewayTicket() + "</td>");
						out.print("</tr>");
					}
				}
			%>
		</table>
	</div>

	<div class="tabs-panel" id="payments">
		<h5>Payments</h5>
		<table>
			<thead>
			<th>Payment ID</th>
			<th>Amount Paid </th>
			<th>Tame Pain</th>
			<th>Ticket ID</th>
			</thead>
			<%
				List<Payment> payments = (List<Payment>) request.getAttribute("payments");
				if (payments
						!= null) {
					for (Payment payment : payments) {
						out.print("<tr>");
						out.print("<td>" + payment.getPaymentId() + "</td>");
						out.print("<td>" + payment.getPaymentAmount() + "</td>");
						out.print("<td>" + payment.getPaymentTime() + "</td>");
						out.print("<td>" + payment.getTicketId() + "</td>");
						out.print("</tr>");
					}
				}
			%>
		</table>
	</div>
</div>
<%@include file="../../jspf/footer.jspf" %>