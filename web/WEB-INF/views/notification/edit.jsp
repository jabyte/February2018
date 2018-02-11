<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditNotificationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditNotificationLabel_notificationId}" for="notificationId" />
                    <h:inputText id="notificationId" value="#{notificationController.selected.notificationId}" title="#{bundle.EditNotificationTitle_notificationId}" required="true" requiredMessage="#{bundle.EditNotificationRequiredMessage_notificationId}"/>
                    <h:outputLabel value="#{bundle.EditNotificationLabel_dateSent}" for="dateSent" />
                    <h:inputText id="dateSent" value="#{notificationController.selected.dateSent}" title="#{bundle.EditNotificationTitle_dateSent}" required="true" requiredMessage="#{bundle.EditNotificationRequiredMessage_dateSent}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.EditNotificationLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{notificationController.selected.customerId}" title="#{bundle.EditNotificationTitle_customerId}" required="true" requiredMessage="#{bundle.EditNotificationRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditNotificationLabel_paymentId}" for="paymentId" />
                    <h:selectOneMenu id="paymentId" value="#{notificationController.selected.paymentId}" title="#{bundle.EditNotificationTitle_paymentId}" required="true" requiredMessage="#{bundle.EditNotificationRequiredMessage_paymentId}">
                        <f:selectItems value="#{paymentController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <h:commandLink action="#{notificationController.update}" value="#{bundle.EditNotificationSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditNotificationViewLink}"/>
                <br />
                <h:commandLink action="#{notificationController.prepareList}" value="#{bundle.EditNotificationShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditNotificationIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
