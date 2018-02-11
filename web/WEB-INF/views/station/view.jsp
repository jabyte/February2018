<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewStationTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewStationLabel_stationId}"/>
                    <h:outputText value="#{stationController.selected.stationId}" title="#{bundle.ViewStationTitle_stationId}"/>
                    <h:outputText value="#{bundle.ViewStationLabel_stationName}"/>
                    <h:outputText value="#{stationController.selected.stationName}" title="#{bundle.ViewStationTitle_stationName}"/>
                    <h:outputText value="#{bundle.ViewStationLabel_stationAddress}"/>
                    <h:outputText value="#{stationController.selected.stationAddress}" title="#{bundle.ViewStationTitle_stationAddress}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{stationController.destroyAndView}" value="#{bundle.ViewStationDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewStationEditLink}"/>
                <br />
                <h:commandLink action="#{stationController.prepareCreate}" value="#{bundle.ViewStationCreateLink}" />
                <br />
                <h:commandLink action="#{stationController.prepareList}" value="#{bundle.ViewStationShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewStationIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
