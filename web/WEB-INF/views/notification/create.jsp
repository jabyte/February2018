<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateNotificationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateNotificationLabel_notificationId}" for="notificationId" />
                    <h:inputText id="notificationId" value="#{notificationController.selected.notificationId}" title="#{bundle.CreateNotificationTitle_notificationId}" required="true" requiredMessage="#{bundle.CreateNotificationRequiredMessage_notificationId}"/>
                    <h:outputLabel value="#{bundle.CreateNotificationLabel_dateSent}" for="dateSent" />
                    <h:inputText id="dateSent" value="#{notificationController.selected.dateSent}" title="#{bundle.CreateNotificationTitle_dateSent}" required="true" requiredMessage="#{bundle.CreateNotificationRequiredMessage_dateSent}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.CreateNotificationLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{notificationController.selected.customerId}" title="#{bundle.CreateNotificationTitle_customerId}" required="true" requiredMessage="#{bundle.CreateNotificationRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateNotificationLabel_paymentId}" for="paymentId" />
                    <h:selectOneMenu id="paymentId" value="#{notificationController.selected.paymentId}" title="#{bundle.CreateNotificationTitle_paymentId}" required="true" requiredMessage="#{bundle.CreateNotificationRequiredMessage_paymentId}">
                        <f:selectItems value="#{paymentController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{notificationController.create}" value="#{bundle.CreateNotificationSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{notificationController.prepareList}" value="#{bundle.CreateNotificationShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateNotificationIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
