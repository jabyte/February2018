<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditAdministratorTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_adminId}" for="adminId" />
                    <h:inputText id="adminId" value="#{administratorController.selected.adminId}" title="#{bundle.EditAdministratorTitle_adminId}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_adminId}"/>
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_phoneNumber}" for="phoneNumber" />
                    <h:inputText id="phoneNumber" value="#{administratorController.selected.phoneNumber}" title="#{bundle.EditAdministratorTitle_phoneNumber}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_phoneNumber}"/>
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_firstName}" for="firstName" />
                    <h:inputText id="firstName" value="#{administratorController.selected.firstName}" title="#{bundle.EditAdministratorTitle_firstName}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_firstName}"/>
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_lastName}" for="lastName" />
                    <h:inputText id="lastName" value="#{administratorController.selected.lastName}" title="#{bundle.EditAdministratorTitle_lastName}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_lastName}"/>
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_middleName}" for="middleName" />
                    <h:inputText id="middleName" value="#{administratorController.selected.middleName}" title="#{bundle.EditAdministratorTitle_middleName}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_middleName}"/>
                    <h:outputLabel value="#{bundle.EditAdministratorLabel_adminEmail}" for="adminEmail" />
                    <h:inputText id="adminEmail" value="#{administratorController.selected.adminEmail}" title="#{bundle.EditAdministratorTitle_adminEmail}" required="true" requiredMessage="#{bundle.EditAdministratorRequiredMessage_adminEmail}"/>
                </h:panelGrid>
                <h:commandLink action="#{administratorController.update}" value="#{bundle.EditAdministratorSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditAdministratorViewLink}"/>
                <br />
                <h:commandLink action="#{administratorController.prepareList}" value="#{bundle.EditAdministratorShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditAdministratorIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
