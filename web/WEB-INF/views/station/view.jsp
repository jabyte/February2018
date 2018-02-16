<%@page import="ng.transnova.models.Station"%>
<%@include file="../../jspf/header.jspf" %>
<h4>STATIONS</h4>
<table>
	<thead>
	<th>Station ID</th>
	<th>Station Name</th>
	<th>Station Address</th>
	<th>Edit</th>
	<th>Delete</th>
</thead>
<%
	Station station = (Station) request.getAttribute("station");
	if (station != null) {
		out.print("<tr>");
		out.print("<td>" + station.getStationId().toString() + "</td>");
		out.print("<td>" + station.getStationName() + "</td>");
		out.print("<td>" + station.getStationAddress() + "</td>");
		out.print("<td><a id = \"/Transnova/administrator/station/edit/" + station.getStationId().toString() + "\" href=\"#\">Edit</a></td>");
		out.print("<td><a id = \"/Transnova/administrator/station/delete/" + station.getStationId().toString() + "\"href=\"#\">Delete</a></td>");
		out.print("</tr>");
	}
%>
</table>
<div>
	<a href="#" class="button">Add new station</a>
</div>
<%@include file="../../jspf/footer.jspf" %>