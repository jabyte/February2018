<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewCouponLabel_couponId}"/>
                    <h:outputText value="#{couponController.selected.couponId}" title="#{bundle.ViewCouponTitle_couponId}"/>
                    <h:outputText value="#{bundle.ViewCouponLabel_couponValue}"/>
                    <h:outputText value="#{couponController.selected.couponValue}" title="#{bundle.ViewCouponTitle_couponValue}"/>
                    <h:outputText value="#{bundle.ViewCouponLabel_couponCreationDate}"/>
                    <h:outputText value="#{couponController.selected.couponCreationDate}" title="#{bundle.ViewCouponTitle_couponCreationDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="#{bundle.ViewCouponLabel_couponExpiryDate}"/>
                    <h:outputText value="#{couponController.selected.couponExpiryDate}" title="#{bundle.ViewCouponTitle_couponExpiryDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="#{bundle.ViewCouponLabel_couponDescription}"/>
                    <h:outputText value="#{couponController.selected.couponDescription}" title="#{bundle.ViewCouponTitle_couponDescription}"/>
                    <h:outputText value="#{bundle.ViewCouponLabel_adminId}"/>
                    <h:outputText value="#{couponController.selected.adminId}" title="#{bundle.ViewCouponTitle_adminId}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{couponController.destroyAndView}" value="#{bundle.ViewCouponDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewCouponEditLink}"/>
                <br />
                <h:commandLink action="#{couponController.prepareCreate}" value="#{bundle.ViewCouponCreateLink}" />
                <br />
                <h:commandLink action="#{couponController.prepareList}" value="#{bundle.ViewCouponShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewCouponIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
