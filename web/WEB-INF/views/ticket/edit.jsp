<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditTicketTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditTicketLabel_ticketId}" for="ticketId" />
                    <h:inputText id="ticketId" value="#{ticketController.selected.ticketId}" title="#{bundle.EditTicketTitle_ticketId}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_ticketId}"/>
                    <h:outputLabel value="#{bundle.EditTicketLabel_ticketNumber}" for="ticketNumber" />
                    <h:inputText id="ticketNumber" value="#{ticketController.selected.ticketNumber}" title="#{bundle.EditTicketTitle_ticketNumber}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_ticketNumber}"/>
                    <h:outputLabel value="#{bundle.EditTicketLabel_dateBooked}" for="dateBooked" />
                    <h:inputText id="dateBooked" value="#{ticketController.selected.dateBooked}" title="#{bundle.EditTicketTitle_dateBooked}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_dateBooked}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.EditTicketLabel_onewayTicket}" for="onewayTicket" />
                    <h:inputText id="onewayTicket" value="#{ticketController.selected.onewayTicket}" title="#{bundle.EditTicketTitle_onewayTicket}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_onewayTicket}"/>
                    <h:outputLabel value="#{bundle.EditTicketLabel_deparcherTime}" for="deparcherTime" />
                    <h:inputText id="deparcherTime" value="#{ticketController.selected.deparcherTime}" title="#{bundle.EditTicketTitle_deparcherTime}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_deparcherTime}"/>
                    <h:outputLabel value="#{bundle.EditTicketLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{ticketController.selected.customerId}" title="#{bundle.EditTicketTitle_customerId}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditTicketLabel_destination}" for="destination" />
                    <h:selectOneMenu id="destination" value="#{ticketController.selected.destination}" title="#{bundle.EditTicketTitle_destination}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_destination}">
                        <f:selectItems value="#{stationController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditTicketLabel_paymentId}" for="paymentId" />
                    <h:selectOneMenu id="paymentId" value="#{ticketController.selected.paymentId}" title="#{bundle.EditTicketTitle_paymentId}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_paymentId}">
                        <f:selectItems value="#{paymentController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditTicketLabel_source}" for="source" />
                    <h:selectOneMenu id="source" value="#{ticketController.selected.source}" title="#{bundle.EditTicketTitle_source}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_source}">
                        <f:selectItems value="#{stationController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditTicketLabel_staffId}" for="staffId" />
                    <h:selectOneMenu id="staffId" value="#{ticketController.selected.staffId}" title="#{bundle.EditTicketTitle_staffId}" required="true" requiredMessage="#{bundle.EditTicketRequiredMessage_staffId}">
                        <f:selectItems value="#{staffController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <h:commandLink action="#{ticketController.update}" value="#{bundle.EditTicketSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditTicketViewLink}"/>
                <br />
                <h:commandLink action="#{ticketController.prepareList}" value="#{bundle.EditTicketShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditTicketIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
