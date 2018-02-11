<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListCouponEmpty}" rendered="#{couponController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{couponController.items.rowCount > 0}">
					<h:outputText value="#{couponController.pagination.pageFirstItem + 1}..#{couponController.pagination.pageLastItem + 1}/#{couponController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{couponController.previous}" value="#{bundle.Previous} #{couponController.pagination.pageSize}" rendered="#{couponController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{couponController.next}" value="#{bundle.Next} #{couponController.pagination.pageSize}" rendered="#{couponController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{couponController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_couponId}"/>
							</f:facet>
							<h:outputText value="#{item.couponId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_couponValue}"/>
							</f:facet>
							<h:outputText value="#{item.couponValue}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_couponCreationDate}"/>
							</f:facet>
							<h:outputText value="#{item.couponCreationDate}">
								<f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
							</h:outputText>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_couponExpiryDate}"/>
							</f:facet>
							<h:outputText value="#{item.couponExpiryDate}">
								<f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
							</h:outputText>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_couponDescription}"/>
							</f:facet>
							<h:outputText value="#{item.couponDescription}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCouponTitle_adminId}"/>
							</f:facet>
							<h:outputText value="#{item.adminId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{couponController.prepareView}" value="#{bundle.ListCouponViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{couponController.prepareEdit}" value="#{bundle.ListCouponEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{couponController.destroy}" value="#{bundle.ListCouponDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{couponController.prepareCreate}" value="#{bundle.ListCouponCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListCouponIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
