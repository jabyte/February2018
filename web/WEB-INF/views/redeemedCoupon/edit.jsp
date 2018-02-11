<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditRedeemedCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditRedeemedCouponLabel_dateRedeemed}" for="dateRedeemed" />
                    <h:inputText id="dateRedeemed" value="#{redeemedCouponController.selected.dateRedeemed}" title="#{bundle.EditRedeemedCouponTitle_dateRedeemed}" required="true" requiredMessage="#{bundle.EditRedeemedCouponRequiredMessage_dateRedeemed}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.EditRedeemedCouponLabel_couponRedeemId}" for="couponRedeemId" />
                    <h:inputText id="couponRedeemId" value="#{redeemedCouponController.selected.couponRedeemId}" title="#{bundle.EditRedeemedCouponTitle_couponRedeemId}" required="true" requiredMessage="#{bundle.EditRedeemedCouponRequiredMessage_couponRedeemId}"/>
                    <h:outputLabel value="#{bundle.EditRedeemedCouponLabel_couponId}" for="couponId" />
                    <h:selectOneMenu id="couponId" value="#{redeemedCouponController.selected.couponId}" title="#{bundle.EditRedeemedCouponTitle_couponId}" required="true" requiredMessage="#{bundle.EditRedeemedCouponRequiredMessage_couponId}">
                        <f:selectItems value="#{couponController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputLabel value="#{bundle.EditRedeemedCouponLabel_customerId}" for="customerId" />
                    <h:selectOneMenu id="customerId" value="#{redeemedCouponController.selected.customerId}" title="#{bundle.EditRedeemedCouponTitle_customerId}" required="true" requiredMessage="#{bundle.EditRedeemedCouponRequiredMessage_customerId}">
                        <f:selectItems value="#{customerController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <h:commandLink action="#{redeemedCouponController.update}" value="#{bundle.EditRedeemedCouponSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditRedeemedCouponViewLink}"/>
                <br />
                <h:commandLink action="#{redeemedCouponController.prepareList}" value="#{bundle.EditRedeemedCouponShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditRedeemedCouponIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
