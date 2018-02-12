<%--
    Document   : payment
    Created on : Feb 12, 2018, 3:55:13 PM
    Author     : jabyte
--%>
<%@include file="../../jspf/header.jspf" %>
<form id="payment-form" name="payment-form" class="payment-form">
	<div class="error-message">
		<i class="fa fa-warning"></i><span></span>
	</div>
	<div class="element-pair">
		<div class="element-pair-container">
			<div class="element-wrap">
				<div class="element-label"><span>First Name</span></div>
				<input id="customer-first-name" type="text" class="element-is-input" data-validetta="required" required>
			</div>
			<div class="element-wrap">
				<div class="element-label"><span>Last Name</span></div>
				<input id="customer-last-name" type="text" class="element-is-input">
			</div>
		</div>
	</div>
	<div class="element-wrap">
		<div class="element-label"><span>Email Address</span></div>
		<input id="customer-email" type="email" class="element-is-input" data-validetta="required,email" required>
	</div>
	<div id="phone-number" style="display: none" class="element-wrap">
		<div class="element-label"><span>Phone Number</span></div>
		<input id="customer-phone" type="tel" class="element-is-input" data-validetta="required,number" required>
	</div>
	<div class="element-pair">
		<div class="element-label"><span>Amount to charge</span></div>
		<div class="element-pair-container">
			<div class="element-wrap element-wrap-for-select element-wrap-on-left">
				<select id="payment-currency-options" class="element-is-select" disabled="true">
					<option value="NGN">NGN</option>
				</select>
			</div>
			<div class="element-wrap element-wrap-on-right">
				<input id="payment-amount" type="text" class="element-is-input" data-validetta="required" required>
			</div>
		</div>
	</div>
	<div id="custom-fields"></div>
	<div class="element-wrap element-wrap-for-submit">
		<button type="button" id="pay-btn" class="button button-is-green">Make Payment</button>
	</div>
	<script src="https://js.paystack.co/v1/inline.js"></script>
</form>
<%@include file="../../jspf/footer.jspf" %>