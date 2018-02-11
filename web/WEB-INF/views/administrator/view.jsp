<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewAdministratorTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewAdministratorLabel_adminId}"/>
                    <h:outputText value="#{administratorController.selected.adminId}" title="#{bundle.ViewAdministratorTitle_adminId}"/>
                    <h:outputText value="#{bundle.ViewAdministratorLabel_phoneNumber}"/>
                    <h:outputText value="#{administratorController.selected.phoneNumber}" title="#{bundle.ViewAdministratorTitle_phoneNumber}"/>
                    <h:outputText value="#{bundle.ViewAdministratorLabel_firstName}"/>
                    <h:outputText value="#{administratorController.selected.firstName}" title="#{bundle.ViewAdministratorTitle_firstName}"/>
                    <h:outputText value="#{bundle.ViewAdministratorLabel_lastName}"/>
                    <h:outputText value="#{administratorController.selected.lastName}" title="#{bundle.ViewAdministratorTitle_lastName}"/>
                    <h:outputText value="#{bundle.ViewAdministratorLabel_middleName}"/>
                    <h:outputText value="#{administratorController.selected.middleName}" title="#{bundle.ViewAdministratorTitle_middleName}"/>
                    <h:outputText value="#{bundle.ViewAdministratorLabel_adminEmail}"/>
                    <h:outputText value="#{administratorController.selected.adminEmail}" title="#{bundle.ViewAdministratorTitle_adminEmail}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{administratorController.destroyAndView}" value="#{bundle.ViewAdministratorDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewAdministratorEditLink}"/>
                <br />
                <h:commandLink action="#{administratorController.prepareCreate}" value="#{bundle.ViewAdministratorCreateLink}" />
                <br />
                <h:commandLink action="#{administratorController.prepareList}" value="#{bundle.ViewAdministratorShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewAdministratorIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
