<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ViewRedeemedCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="#{bundle.ViewRedeemedCouponLabel_dateRedeemed}"/>
                    <h:outputText value="#{redeemedCouponController.selected.dateRedeemed}" title="#{bundle.ViewRedeemedCouponTitle_dateRedeemed}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:outputText>
                    <h:outputText value="#{bundle.ViewRedeemedCouponLabel_couponRedeemId}"/>
                    <h:outputText value="#{redeemedCouponController.selected.couponRedeemId}" title="#{bundle.ViewRedeemedCouponTitle_couponRedeemId}"/>
                    <h:outputText value="#{bundle.ViewRedeemedCouponLabel_couponId}"/>
                    <h:outputText value="#{redeemedCouponController.selected.couponId}" title="#{bundle.ViewRedeemedCouponTitle_couponId}"/>
                    <h:outputText value="#{bundle.ViewRedeemedCouponLabel_customerId}"/>
                    <h:outputText value="#{redeemedCouponController.selected.customerId}" title="#{bundle.ViewRedeemedCouponTitle_customerId}"/>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{redeemedCouponController.destroyAndView}" value="#{bundle.ViewRedeemedCouponDestroyLink}"/>
                <br />
                <br />
                <h:link outcome="Edit" value="#{bundle.ViewRedeemedCouponEditLink}"/>
                <br />
                <h:commandLink action="#{redeemedCouponController.prepareCreate}" value="#{bundle.ViewRedeemedCouponCreateLink}" />
                <br />
                <h:commandLink action="#{redeemedCouponController.prepareList}" value="#{bundle.ViewRedeemedCouponShowAllLink}"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.ViewRedeemedCouponIndexLink}"/>

            </h:form>
        </ui:define>
    </ui:composition>

</html>
