<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditStaffTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditStaffLabel_staffId}" for="staffId" />
                    <h:inputText id="staffId" value="#{staffController.selected.staffId}" title="#{bundle.EditStaffTitle_staffId}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_staffId}"/>
                    <h:outputLabel value="#{bundle.EditStaffLabel_phoneNumber}" for="phoneNumber" />
                    <h:inputText id="phoneNumber" value="#{staffController.selected.phoneNumber}" title="#{bundle.EditStaffTitle_phoneNumber}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_phoneNumber}"/>
                    <h:outputLabel value="#{bundle.EditStaffLabel_firstName}" for="firstName" />
                    <h:inputText id="firstName" value="#{staffController.selected.firstName}" title="#{bundle.EditStaffTitle_firstName}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_firstName}"/>
                    <h:outputLabel value="#{bundle.EditStaffLabel_lastName}" for="lastName" />
                    <h:inputText id="lastName" value="#{staffController.selected.lastName}" title="#{bundle.EditStaffTitle_lastName}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_lastName}"/>
                    <h:outputLabel value="#{bundle.EditStaffLabel_middleName}" for="middleName" />
                    <h:inputText id="middleName" value="#{staffController.selected.middleName}" title="#{bundle.EditStaffTitle_middleName}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_middleName}"/>
                    <h:outputLabel value="#{bundle.EditStaffLabel_adminId}" for="adminId" />
                    <h:selectOneMenu id="adminId" value="#{staffController.selected.adminId}" title="#{bundle.EditStaffTitle_adminId}" required="true" requiredMessage="#{bundle.EditStaffRequiredMessage_adminId}">
                        <f:selectItems value="#{administratorController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <h:commandLink action="#{staffController.update}" value="#{bundle.EditStaffSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditStaffViewLink}"/>
                <br />
                <h:commandLink action="#{staffController.prepareList}" value="#{bundle.EditStaffShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditStaffIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
