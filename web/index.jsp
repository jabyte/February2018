<%--
    Document   : index
    Created on : Feb 11, 2018, 7:08:18 AM
    Author     : jabyte
--%>
<%@page import="ng.transnova.models.Station"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Transnova Administrative Panel | Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="resources/css/foundation.css"/>
	</head>
	<body>
		<div class="grid-container">
			<div class="grid-x grid-padding-x callout" style="background-image: url(resources/img/banner.jpg); background-size: cover; min-height: 500px; padding:  20px;">
				<div class="medium-8 cell"></div>

				<div class="medium-4 cell callout" style="background: whitesmoke; padding: 20px;">
					<h4 style="text-align: center;">BOOK A TRIP</h4>
					<h6 style="text-align: center;">Safe, Secured, Fast & Reliable.</h6>
					<br>
					<form method="post" action="/Transnova/booking">
						<label for="source">From:</label>
						<select id="source" name="source">
							<option value="">-Select Source-</option>
							<%
								List<Station> stations = (List<Station>) request.getAttribute("stations");
								if (stations != null) {
									for (Station station : stations) {
										out.println("<option value=\"" + station.getStationId().toString() + "\">" + station.getStationName() + "</option>");
									}
								}
							%>
						</select>

						<label for="destination">To:</label>
						<select id="departure" name="destination">
							<option value="">-Select Source-</option>
							<%
								if (stations != null) {
									for (Station station : stations) {
										out.println("<option value=\"" + station.getStationId().toString() + "\">" + station.getStationName() + "</option>");
									}
								}
							%>
						</select>

						<label for="departure_date">Date:</label>
						<input type="date" id="departure_date" name="departure_date" />

						<label for="departure_time">Time:</label>
						<select id="departure_time" name="departure_time">
							<option value="800">08:00 AM</option>
							<option value="1000">10:00 AM</option>
							<option value="1200">12:00 AM</option>
							<option value="1400">02:00 AM</option>
							<option value="1600">04:00 AM</option>
							<option value="1800">06:00 AM</option>
						</select><br><br>
						<input type="submit" id="book-btn" value="Book it!" class="button expanded" />
					</form>
				</div>
			</div>
		</div>
	</body>
</html>