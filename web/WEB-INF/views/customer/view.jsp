<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewCustomerTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewCustomerLabel_customerId}"/>
                    <h:outputText value="#{customerController.selected.customerId}" title="#{bundle.ViewCustomerTitle_customerId}"/>
                    <h:outputText value="#{bundle.ViewCustomerLabel_phoneNumber}"/>
                    <h:outputText value="#{customerController.selected.phoneNumber}" title="#{bundle.ViewCustomerTitle_phoneNumber}"/>
                    <h:outputText value="#{bundle.ViewCustomerLabel_firstName}"/>
                    <h:outputText value="#{customerController.selected.firstName}" title="#{bundle.ViewCustomerTitle_firstName}"/>
                    <h:outputText value="#{bundle.ViewCustomerLabel_lastName}"/>
                    <h:outputText value="#{customerController.selected.lastName}" title="#{bundle.ViewCustomerTitle_lastName}"/>
                    <h:outputText value="#{bundle.ViewCustomerLabel_middleName}"/>
                    <h:outputText value="#{customerController.selected.middleName}" title="#{bundle.ViewCustomerTitle_middleName}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{customerController.destroyAndView}" value="#{bundle.ViewCustomerDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewCustomerEditLink}"/>
                <br />
                <h:commandLink action="#{customerController.prepareCreate}" value="#{bundle.ViewCustomerCreateLink}" />
                <br />
                <h:commandLink action="#{customerController.prepareList}" value="#{bundle.ViewCustomerShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewCustomerIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
