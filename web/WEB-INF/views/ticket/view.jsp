<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewTicketTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewTicketLabel_ticketId}"/>
                    <h:outputText value="#{ticketController.selected.ticketId}" title="#{bundle.ViewTicketTitle_ticketId}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_ticketNumber}"/>
                    <h:outputText value="#{ticketController.selected.ticketNumber}" title="#{bundle.ViewTicketTitle_ticketNumber}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_dateBooked}"/>
                    <h:outputText value="#{ticketController.selected.dateBooked}" title="#{bundle.ViewTicketTitle_dateBooked}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="#{bundle.ViewTicketLabel_onewayTicket}"/>
                    <h:outputText value="#{ticketController.selected.onewayTicket}" title="#{bundle.ViewTicketTitle_onewayTicket}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_deparcherTime}"/>
                    <h:outputText value="#{ticketController.selected.deparcherTime}" title="#{bundle.ViewTicketTitle_deparcherTime}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_customerId}"/>
                    <h:outputText value="#{ticketController.selected.customerId}" title="#{bundle.ViewTicketTitle_customerId}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_destination}"/>
                    <h:outputText value="#{ticketController.selected.destination}" title="#{bundle.ViewTicketTitle_destination}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_paymentId}"/>
                    <h:outputText value="#{ticketController.selected.paymentId}" title="#{bundle.ViewTicketTitle_paymentId}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_source}"/>
                    <h:outputText value="#{ticketController.selected.source}" title="#{bundle.ViewTicketTitle_source}"/>
                    <h:outputText value="#{bundle.ViewTicketLabel_staffId}"/>
                    <h:outputText value="#{ticketController.selected.staffId}" title="#{bundle.ViewTicketTitle_staffId}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{ticketController.destroyAndView}" value="#{bundle.ViewTicketDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewTicketEditLink}"/>
                <br />
                <h:commandLink action="#{ticketController.prepareCreate}" value="#{bundle.ViewTicketCreateLink}" />
                <br />
                <h:commandLink action="#{ticketController.prepareList}" value="#{bundle.ViewTicketShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewTicketIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
