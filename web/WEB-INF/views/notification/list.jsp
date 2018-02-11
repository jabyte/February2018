<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListNotificationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListNotificationEmpty}" rendered="#{notificationController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{notificationController.items.rowCount > 0}">
					<h:outputText value="#{notificationController.pagination.pageFirstItem + 1}..#{notificationController.pagination.pageLastItem + 1}/#{notificationController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{notificationController.previous}" value="#{bundle.Previous} #{notificationController.pagination.pageSize}" rendered="#{notificationController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{notificationController.next}" value="#{bundle.Next} #{notificationController.pagination.pageSize}" rendered="#{notificationController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{notificationController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListNotificationTitle_notificationId}"/>
							</f:facet>
							<h:outputText value="#{item.notificationId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListNotificationTitle_dateSent}"/>
							</f:facet>
							<h:outputText value="#{item.dateSent}">
								<f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
							</h:outputText>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListNotificationTitle_customerId}"/>
							</f:facet>
							<h:outputText value="#{item.customerId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListNotificationTitle_paymentId}"/>
							</f:facet>
							<h:outputText value="#{item.paymentId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{notificationController.prepareView}" value="#{bundle.ListNotificationViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{notificationController.prepareEdit}" value="#{bundle.ListNotificationEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{notificationController.destroy}" value="#{bundle.ListNotificationDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{notificationController.prepareCreate}" value="#{bundle.ListNotificationCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListNotificationIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
