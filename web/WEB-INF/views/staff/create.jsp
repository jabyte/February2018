<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateStaffTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateStaffLabel_staffId}" for="staffId" />
                    <h:inputText id="staffId" value="#{staffController.selected.staffId}" title="#{bundle.CreateStaffTitle_staffId}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_staffId}"/>
                    <h:outputLabel value="#{bundle.CreateStaffLabel_phoneNumber}" for="phoneNumber" />
                    <h:inputText id="phoneNumber" value="#{staffController.selected.phoneNumber}" title="#{bundle.CreateStaffTitle_phoneNumber}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_phoneNumber}"/>
                    <h:outputLabel value="#{bundle.CreateStaffLabel_firstName}" for="firstName" />
                    <h:inputText id="firstName" value="#{staffController.selected.firstName}" title="#{bundle.CreateStaffTitle_firstName}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_firstName}"/>
                    <h:outputLabel value="#{bundle.CreateStaffLabel_lastName}" for="lastName" />
                    <h:inputText id="lastName" value="#{staffController.selected.lastName}" title="#{bundle.CreateStaffTitle_lastName}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_lastName}"/>
                    <h:outputLabel value="#{bundle.CreateStaffLabel_middleName}" for="middleName" />
                    <h:inputText id="middleName" value="#{staffController.selected.middleName}" title="#{bundle.CreateStaffTitle_middleName}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_middleName}"/>
                    <h:outputLabel value="#{bundle.CreateStaffLabel_adminId}" for="adminId" />
                    <h:selectOneMenu id="adminId" value="#{staffController.selected.adminId}" title="#{bundle.CreateStaffTitle_adminId}" required="true" requiredMessage="#{bundle.CreateStaffRequiredMessage_adminId}">
                        <f:selectItems value="#{administratorController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{staffController.create}" value="#{bundle.CreateStaffSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{staffController.prepareList}" value="#{bundle.CreateStaffShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateStaffIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
