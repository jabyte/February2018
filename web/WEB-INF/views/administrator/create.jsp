<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateAdministratorTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_adminId}" for="adminId" />
                    <h:inputText id="adminId" value="#{administratorController.selected.adminId}" title="#{bundle.CreateAdministratorTitle_adminId}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_adminId}"/>
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_phoneNumber}" for="phoneNumber" />
                    <h:inputText id="phoneNumber" value="#{administratorController.selected.phoneNumber}" title="#{bundle.CreateAdministratorTitle_phoneNumber}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_phoneNumber}"/>
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_firstName}" for="firstName" />
                    <h:inputText id="firstName" value="#{administratorController.selected.firstName}" title="#{bundle.CreateAdministratorTitle_firstName}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_firstName}"/>
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_lastName}" for="lastName" />
                    <h:inputText id="lastName" value="#{administratorController.selected.lastName}" title="#{bundle.CreateAdministratorTitle_lastName}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_lastName}"/>
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_middleName}" for="middleName" />
                    <h:inputText id="middleName" value="#{administratorController.selected.middleName}" title="#{bundle.CreateAdministratorTitle_middleName}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_middleName}"/>
                    <h:outputLabel value="#{bundle.CreateAdministratorLabel_adminEmail}" for="adminEmail" />
                    <h:inputText id="adminEmail" value="#{administratorController.selected.adminEmail}" title="#{bundle.CreateAdministratorTitle_adminEmail}" required="true" requiredMessage="#{bundle.CreateAdministratorRequiredMessage_adminEmail}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{administratorController.create}" value="#{bundle.CreateAdministratorSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{administratorController.prepareList}" value="#{bundle.CreateAdministratorShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateAdministratorIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
