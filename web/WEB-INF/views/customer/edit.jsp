<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditCustomerTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditCustomerLabel_customerId}" for="customerId" />
                    <h:inputText id="customerId" value="#{customerController.selected.customerId}" title="#{bundle.EditCustomerTitle_customerId}" required="true" requiredMessage="#{bundle.EditCustomerRequiredMessage_customerId}"/>
                    <h:outputLabel value="#{bundle.EditCustomerLabel_phoneNumber}" for="phoneNumber" />
                    <h:inputText id="phoneNumber" value="#{customerController.selected.phoneNumber}" title="#{bundle.EditCustomerTitle_phoneNumber}" required="true" requiredMessage="#{bundle.EditCustomerRequiredMessage_phoneNumber}"/>
                    <h:outputLabel value="#{bundle.EditCustomerLabel_firstName}" for="firstName" />
                    <h:inputText id="firstName" value="#{customerController.selected.firstName}" title="#{bundle.EditCustomerTitle_firstName}" required="true" requiredMessage="#{bundle.EditCustomerRequiredMessage_firstName}"/>
                    <h:outputLabel value="#{bundle.EditCustomerLabel_lastName}" for="lastName" />
                    <h:inputText id="lastName" value="#{customerController.selected.lastName}" title="#{bundle.EditCustomerTitle_lastName}" required="true" requiredMessage="#{bundle.EditCustomerRequiredMessage_lastName}"/>
                    <h:outputLabel value="#{bundle.EditCustomerLabel_middleName}" for="middleName" />
                    <h:inputText id="middleName" value="#{customerController.selected.middleName}" title="#{bundle.EditCustomerTitle_middleName}" />
                </h:panelGrid>
                <h:commandLink action="#{customerController.update}" value="#{bundle.EditCustomerSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditCustomerViewLink}"/>
                <br />
                <h:commandLink action="#{customerController.prepareList}" value="#{bundle.EditCustomerShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditCustomerIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
