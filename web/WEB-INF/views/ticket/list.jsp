<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListTicketTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListTicketEmpty}" rendered="#{ticketController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{ticketController.items.rowCount > 0}">
					<h:outputText value="#{ticketController.pagination.pageFirstItem + 1}..#{ticketController.pagination.pageLastItem + 1}/#{ticketController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{ticketController.previous}" value="#{bundle.Previous} #{ticketController.pagination.pageSize}" rendered="#{ticketController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{ticketController.next}" value="#{bundle.Next} #{ticketController.pagination.pageSize}" rendered="#{ticketController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{ticketController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_ticketId}"/>
							</f:facet>
							<h:outputText value="#{item.ticketId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_ticketNumber}"/>
							</f:facet>
							<h:outputText value="#{item.ticketNumber}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_dateBooked}"/>
							</f:facet>
							<h:outputText value="#{item.dateBooked}">
								<f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
							</h:outputText>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_onewayTicket}"/>
							</f:facet>
							<h:outputText value="#{item.onewayTicket}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_deparcherTime}"/>
							</f:facet>
							<h:outputText value="#{item.deparcherTime}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_customerId}"/>
							</f:facet>
							<h:outputText value="#{item.customerId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_destination}"/>
							</f:facet>
							<h:outputText value="#{item.destination}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_paymentId}"/>
							</f:facet>
							<h:outputText value="#{item.paymentId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_source}"/>
							</f:facet>
							<h:outputText value="#{item.source}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListTicketTitle_staffId}"/>
							</f:facet>
							<h:outputText value="#{item.staffId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{ticketController.prepareView}" value="#{bundle.ListTicketViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{ticketController.prepareEdit}" value="#{bundle.ListTicketEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{ticketController.destroy}" value="#{bundle.ListTicketDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{ticketController.prepareCreate}" value="#{bundle.ListTicketCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListTicketIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>