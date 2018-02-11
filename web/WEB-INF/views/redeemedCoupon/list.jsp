<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListRedeemedCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListRedeemedCouponEmpty}" rendered="#{redeemedCouponController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{redeemedCouponController.items.rowCount > 0}">
					<h:outputText value="#{redeemedCouponController.pagination.pageFirstItem + 1}..#{redeemedCouponController.pagination.pageLastItem + 1}/#{redeemedCouponController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{redeemedCouponController.previous}" value="#{bundle.Previous} #{redeemedCouponController.pagination.pageSize}" rendered="#{redeemedCouponController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{redeemedCouponController.next}" value="#{bundle.Next} #{redeemedCouponController.pagination.pageSize}" rendered="#{redeemedCouponController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{redeemedCouponController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListRedeemedCouponTitle_dateRedeemed}"/>
							</f:facet>
							<h:outputText value="#{item.dateRedeemed}">
								<f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
							</h:outputText>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListRedeemedCouponTitle_couponRedeemId}"/>
							</f:facet>
							<h:outputText value="#{item.couponRedeemId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListRedeemedCouponTitle_couponId}"/>
							</f:facet>
							<h:outputText value="#{item.couponId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListRedeemedCouponTitle_customerId}"/>
							</f:facet>
							<h:outputText value="#{item.customerId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{redeemedCouponController.prepareView}" value="#{bundle.ListRedeemedCouponViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{redeemedCouponController.prepareEdit}" value="#{bundle.ListRedeemedCouponEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{redeemedCouponController.destroy}" value="#{bundle.ListRedeemedCouponDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{redeemedCouponController.prepareCreate}" value="#{bundle.ListRedeemedCouponCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListRedeemedCouponIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
