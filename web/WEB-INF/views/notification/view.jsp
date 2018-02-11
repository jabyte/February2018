<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewNotificationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewNotificationLabel_notificationId}"/>
                    <h:outputText value="#{notificationController.selected.notificationId}" title="#{bundle.ViewNotificationTitle_notificationId}"/>
                    <h:outputText value="#{bundle.ViewNotificationLabel_dateSent}"/>
                    <h:outputText value="#{notificationController.selected.dateSent}" title="#{bundle.ViewNotificationTitle_dateSent}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="#{bundle.ViewNotificationLabel_customerId}"/>
                    <h:outputText value="#{notificationController.selected.customerId}" title="#{bundle.ViewNotificationTitle_customerId}"/>
                    <h:outputText value="#{bundle.ViewNotificationLabel_paymentId}"/>
                    <h:outputText value="#{notificationController.selected.paymentId}" title="#{bundle.ViewNotificationTitle_paymentId}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{notificationController.destroyAndView}" value="#{bundle.ViewNotificationDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewNotificationEditLink}"/>
                <br />
                <h:commandLink action="#{notificationController.prepareCreate}" value="#{bundle.ViewNotificationCreateLink}" />
                <br />
                <h:commandLink action="#{notificationController.prepareList}" value="#{bundle.ViewNotificationShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewNotificationIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
