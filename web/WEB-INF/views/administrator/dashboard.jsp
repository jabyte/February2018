<%--
    Document   : dashboard
    Created on : Feb 11, 2018, 11:25:41 PM
    Author     : jabyte
--%>
<%@include file="../../jspf/header.jspf" %>
<div class="grid-container grid-x grid-padding-x">
	<div class="top-bar-left medium-2 medium-pull-2">
		<h4 class="title-bar-title">Transnova</h4>
	</div>
	<!--
		<div class="top-bar-right medium-10">
			<ul class="menu">
				<li class="tabs-title"><a href="/Transnova/administrator">Administrator</a></li>
				<li class="tabs-title"><a href="/Transnova/coupon">Coupon</a></li>
				<li class="tabs-title"><a href="/Transnova/customers">Customers</a></li>
				<li class="tabs-title"><a href="/Transnova/notification">Notification</a></li>
				<li class="tabs-title"><a href="/Transnova/payment">Payment</a></li>
				<li class="tabs-title"><a href="/Transnova/redeemedCoupon">Redeemed Coupon</a></li>
				<li class="tabs-title"><a href="/Transnova/staff">Staff</a></li>
				<li class="tabs-title"><a href="/Transnova/station">Station</a></li>
				<li class="tabs-title"><a href="/Transnova/ticket">Ticket</a></li>
			</ul>
		</div>-->
	<div style="height: 70px;"></div>
	<!--<h5>SAFE, SECURED, FAST AND RELIABLE</h5>-->
</div>
<div class="row collapse">
	<div class="small-3 columns">
		<ul class="vertical tabs" data-active-collapse="true" data-tabs id="menu-tabs">
			<li class="tabs-title"><a href="#administrator">Administrator</a></li>
			<li class="tabs-title"><a href="#coupon">Coupon</a></li>
			<li class="tabs-title"><a href="#customers">Customers</a></li>
			<li class="tabs-title"><a href="#notification">Notification</a></li>
			<li class="tabs-title"><a href="#payment">Payment</a></li>
			<li class="tabs-title"><a href="#redeemedCoupon">Redeemed Coupon</a></li>
			<li class="tabs-title"><a href="#staff">Staff</a></li>
			<li class="tabs-title"><a href="#station">Station</a></li>
			<li class="tabs-title"><a href="#ticket">Ticket</a></li>
		</ul>
	</div>

	<div class="small-3 columns">
		<div class="tabs-content" data-tabs-content="menu-tabs">
			<div class="tabs-panel is-active" id="administrator">
				<p>Administrators</p>
				<p>Check me out! I'm a super cool Tab panel with text content!</p>
				<img src="resources/img/banner.jpg" />
			</div>

			<div class="tabs-panel" id="coupon">
				<p>Two</p>
				<img class="thumbnail" src="assets/img/generic/rectangle-7.jpg">
			</div>

			<div class="tabs-panel" id="customers">
				<p>Three</p>
				<p>Check me out! I'm a super cool Tab panel with text content!</p>
			</div>

			<div class="tabs-panel" id="notification">
				<p>Four</p>
				<img class="thumbnail" src="assets/img/generic/rectangle-2.jpg">
			</div>

			<div class="tabs-panel" id="payment">
				<p>Five</p>
				<p>Check me out! I'm a super cool Tab panel with text content!</p>
			</div>

			<div class="tabs-panel" id="redeemedCoupon">
				<p>Six</p>

			</div>

			<div class="tabs-panel" id="staff">
				<p>Six</p>

			</div>

			<div class="tabs-panel" id="station">
				<p>Stations</p>

			</div>

			<div class="tabs-panel" id="ticket">
				<p>ticket</p>

			</div>
		</div>
	</div>
</div>

<!--	<div class="callout">
		<img src="resources/img/banner.jpg" />
	</div>-->

<!--</div>-->

<%@include file="../../jspf/footer.jspf" %>