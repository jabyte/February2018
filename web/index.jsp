<%--
    Document   : index
    Created on : Feb 11, 2018, 7:08:18 AM
    Author     : jabyte
--%>
<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<html>
	<head>
		<title>Transnova Administrative Panel</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="/resources/css/foundation.css"/>
	</head>
	<div>
		<ul class="menu">
			<li><a href="/Transnova/administrator">Administrator</a></li>
			<li><a href="/Transnova/coupon">Coupon</a></li>
			<li><a href="/Transnova/customers">Customers</a></li>
			<li><a href="/Transnova/notification">Notification</a></li>
			<li><a href="/Transnova/payment">Payment</a></li>
			<li><a href="/Transnova/redeemedCoupon">Redeemed Coupon</a></li>
			<li><a href="/Transnova/staff">Staff</a></li>
			<li><a href="/Transnova/station">Station</a></li>
			<li><a href="/Transnova/ticket">Ticket</a></li>
		</ul>
	</div>

	<%@include file="WEB-INF/jspf/footer.jspf" %>