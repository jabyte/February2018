<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewStaffTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewStaffLabel_staffId}"/>
                    <h:outputText value="#{staffController.selected.staffId}" title="#{bundle.ViewStaffTitle_staffId}"/>
                    <h:outputText value="#{bundle.ViewStaffLabel_phoneNumber}"/>
                    <h:outputText value="#{staffController.selected.phoneNumber}" title="#{bundle.ViewStaffTitle_phoneNumber}"/>
                    <h:outputText value="#{bundle.ViewStaffLabel_firstName}"/>
                    <h:outputText value="#{staffController.selected.firstName}" title="#{bundle.ViewStaffTitle_firstName}"/>
                    <h:outputText value="#{bundle.ViewStaffLabel_lastName}"/>
                    <h:outputText value="#{staffController.selected.lastName}" title="#{bundle.ViewStaffTitle_lastName}"/>
                    <h:outputText value="#{bundle.ViewStaffLabel_middleName}"/>
                    <h:outputText value="#{staffController.selected.middleName}" title="#{bundle.ViewStaffTitle_middleName}"/>
                    <h:outputText value="#{bundle.ViewStaffLabel_adminId}"/>
                    <h:outputText value="#{staffController.selected.adminId}" title="#{bundle.ViewStaffTitle_adminId}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{staffController.destroyAndView}" value="#{bundle.ViewStaffDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewStaffEditLink}"/>
                <br />
                <h:commandLink action="#{staffController.prepareCreate}" value="#{bundle.ViewStaffCreateLink}" />
                <br />
                <h:commandLink action="#{staffController.prepareList}" value="#{bundle.ViewStaffShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewStaffIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
