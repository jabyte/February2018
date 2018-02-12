<%--
    Document   : customers
    Created on : Feb 10, 2018, 12:51:47 PM
    Author     : jabyte
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ng.transnova.beans.CustomerFacade"%>
<%@page import="java.util.List"%>
<%@page import="ng.transnova.models.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../jspf/header.jspf" %>
<div style="height: 100px";></div>
<h2>Customers</h2>
<table>
	<thead>
	<th>Customer ID</th>
	<th>Phone Number</th>
	<th>First Name</th>
	<th>Middle Name</th>
	<th>Last Name</th>
	<th>Edit</th>
	<th>Delete</th>
</thead>
<%
	List<Customer> customers = (List<Customer>) request.getAttribute("customers");
	if (customers != null) {
		for (Customer customer : customers) {
			out.print("<tr>");
			out.print("<td>" + customer.getCustomerId().toString() + "</td>");
			out.print("<td>" + customer.getPhoneNumber() + "</td>");
			out.print("<td>" + customer.getFirstName() + "</td>");
			out.print("<td>" + customer.getMiddleName() + "</td>");
			out.print("<td>" + customer.getLastName() + "</td>");
			out.print("<td><a href=\"#\">Edit</a></td>");
			out.print("<td><a href=\"#\">Delete</a></td>");
			out.print("</tr>");
		}
	}
%>
</table>
<div>
	<a href="/Transnova/signup" class="button">Sign Up</a>
</div>
<%@include file="../../jspf/footer.jspf" %>