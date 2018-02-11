<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateRedeemedCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateRedeemedCouponLabel_dateRedeemed}" for="dateRedeemed" />
                    <h:inputText id="dateRedeemed" value="#{redeemedCouponController.selected.dateRedeemed}" title="#{bundle.CreateRedeemedCouponTitle_dateRedeemed}" required="true" requiredMessage="#{bundle.CreateRedeemedCouponRequiredMessage_dateRedeemed}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.CreateRedeemedCouponLabel_couponRedeemId}" for="couponRedeemId" />
                    <h:inputText id="couponRedeemId" value="#{redeemedCouponController.selected.couponRedeemId}" title="#{bundle.CreateRedeemedCouponTitle_couponRedeemId}" required="true" requiredMessage="#{bundle.CreateRedeemedCouponRequiredMessage_couponRedeemId}"/>
                    <h:outputLabel value="#{bundle.CreateRedeemedCouponLabel_couponId}" for="couponId" />
                    <h:selectOneMenu id="couponId" value="#{redeemedCouponController.selected.couponId}" title="#{bundle.CreateRedeemedCouponTitle_couponId}" required="true" requiredMessage="#{bundle.CreateRedeemedCouponRequiredMessage_couponId}">
                        <f:selectItems value="#{couponController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.CreateRedeemedCouponLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{redeemedCouponController.selected.customerId}" title="#{bundle.CreateRedeemedCouponTitle_customerId}" required="true" requiredMessage="#{bundle.CreateRedeemedCouponRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{redeemedCouponController.create}" value="#{bundle.CreateRedeemedCouponSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{redeemedCouponController.prepareList}" value="#{bundle.CreateRedeemedCouponShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateRedeemedCouponIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
