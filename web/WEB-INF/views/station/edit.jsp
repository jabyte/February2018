<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditStationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditStationLabel_stationId}" for="stationId" />
                    <h:inputText id="stationId" value="#{stationController.selected.stationId}" title="#{bundle.EditStationTitle_stationId}" required="true" requiredMessage="#{bundle.EditStationRequiredMessage_stationId}"/>
                    <h:outputLabel value="#{bundle.EditStationLabel_stationName}" for="stationName" />
                    <h:inputText id="stationName" value="#{stationController.selected.stationName}" title="#{bundle.EditStationTitle_stationName}" required="true" requiredMessage="#{bundle.EditStationRequiredMessage_stationName}"/>
                    <h:outputLabel value="#{bundle.EditStationLabel_stationAddress}" for="stationAddress" />
                    <h:inputTextarea rows="4" cols="30" id="stationAddress" value="#{stationController.selected.stationAddress}" title="#{bundle.EditStationTitle_stationAddress}" required="true" requiredMessage="#{bundle.EditStationRequiredMessage_stationAddress}"/>
                </h:panelGrid>
                <h:commandLink action="#{stationController.update}" value="#{bundle.EditStationSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditStationViewLink}"/>
                <br />
                <h:commandLink action="#{stationController.prepareList}" value="#{bundle.EditStationShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditStationIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
