<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateTicketTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateTicketLabel_ticketId}" for="ticketId" />
                    <h:inputText id="ticketId" value="#{ticketController.selected.ticketId}" title="#{bundle.CreateTicketTitle_ticketId}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_ticketId}"/>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_ticketNumber}" for="ticketNumber" />
                    <h:inputText id="ticketNumber" value="#{ticketController.selected.ticketNumber}" title="#{bundle.CreateTicketTitle_ticketNumber}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_ticketNumber}"/>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_dateBooked}" for="dateBooked" />
                    <h:inputText id="dateBooked" value="#{ticketController.selected.dateBooked}" title="#{bundle.CreateTicketTitle_dateBooked}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_dateBooked}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_onewayTicket}" for="onewayTicket" />
                    <h:inputText id="onewayTicket" value="#{ticketController.selected.onewayTicket}" title="#{bundle.CreateTicketTitle_onewayTicket}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_onewayTicket}"/>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_deparcherTime}" for="deparcherTime" />
                    <h:inputText id="deparcherTime" value="#{ticketController.selected.deparcherTime}" title="#{bundle.CreateTicketTitle_deparcherTime}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_deparcherTime}"/>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{ticketController.selected.customerId}" title="#{bundle.CreateTicketTitle_customerId}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_destination}" for="destination" />
                    <h:selectOneMenu id="destination" value="#{ticketController.selected.destination}" title="#{bundle.CreateTicketTitle_destination}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_destination}">
                        <f:selectItems value="#{stationController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_paymentId}" for="paymentId" />
                    <h:selectOneMenu id="paymentId" value="#{ticketController.selected.paymentId}" title="#{bundle.CreateTicketTitle_paymentId}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_paymentId}">
                        <f:selectItems value="#{paymentController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_source}" for="source" />
                    <h:selectOneMenu id="source" value="#{ticketController.selected.source}" title="#{bundle.CreateTicketTitle_source}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_source}">
                        <f:selectItems value="#{stationController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateTicketLabel_staffId}" for="staffId" />
                    <h:selectOneMenu id="staffId" value="#{ticketController.selected.staffId}" title="#{bundle.CreateTicketTitle_staffId}" required="true" requiredMessage="#{bundle.CreateTicketRequiredMessage_staffId}">
                        <f:selectItems value="#{staffController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{ticketController.create}" value="#{bundle.CreateTicketSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{ticketController.prepareList}" value="#{bundle.CreateTicketShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateTicketIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
