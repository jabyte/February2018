<%@page import="java.util.List"%>
<%@page import="ng.transnova.models.Station"%>
<%@include file="../../jspf/header.jspf" %>
<h4>STATIONS</h4>
<table>
	<thead>
	<th>Station ID</th>
	<th>Station Name</th>
	<th>Station Address</th>
	<th>Action</th>
</thead>
<%
	List<Station> stations = (List<Station>) request.getAttribute("stations");
	if (stations != null) {
		for (Station station : stations) {
			out.print("<tr>");
			out.print("<td>" + station.getStationId().toString() + "</td>");
			out.print("<td>" + station.getStationName() + "</td>");
			out.print("<td>" + station.getStationAddress() + "</td>");
			out.print("<td><a id =" + station.getStationId().toString() + "\" href=\"/Transnova/station/view?id=" + station.getStationId().toString() + "\">View</a></td>");
			out.print("</tr>");
		}
	}
%>
</table>
<div>
	<a href="#" class="button">Add new station</a>
</div>
<%@include file="../../jspf/footer.jspf" %>