<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.CreateCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.CreateCouponLabel_couponId}" for="couponId" />
                    <h:inputText id="couponId" value="#{couponController.selected.couponId}" title="#{bundle.CreateCouponTitle_couponId}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_couponId}"/>
                    <h:outputLabel value="#{bundle.CreateCouponLabel_couponValue}" for="couponValue" />
                    <h:inputText id="couponValue" value="#{couponController.selected.couponValue}" title="#{bundle.CreateCouponTitle_couponValue}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_couponValue}"/>
                    <h:outputLabel value="#{bundle.CreateCouponLabel_couponCreationDate}" for="couponCreationDate" />
                    <h:inputText id="couponCreationDate" value="#{couponController.selected.couponCreationDate}" title="#{bundle.CreateCouponTitle_couponCreationDate}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_couponCreationDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.CreateCouponLabel_couponExpiryDate}" for="couponExpiryDate" />
                    <h:inputText id="couponExpiryDate" value="#{couponController.selected.couponExpiryDate}" title="#{bundle.CreateCouponTitle_couponExpiryDate}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_couponExpiryDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.CreateCouponLabel_couponDescription}" for="couponDescription" />
                    <h:inputTextarea rows="4" cols="30" id="couponDescription" value="#{couponController.selected.couponDescription}" title="#{bundle.CreateCouponTitle_couponDescription}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_couponDescription}"/>
                    <h:outputLabel value="#{bundle.CreateCouponLabel_adminId}" for="adminId" />
                    <h:selectOneMenu id="adminId" value="#{couponController.selected.adminId}" title="#{bundle.CreateCouponTitle_adminId}" required="true" requiredMessage="#{bundle.CreateCouponRequiredMessage_adminId}">
                        <f:selectItems value="#{administratorController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <br />
                <h:commandLink action="#{couponController.create}" value="#{bundle.CreateCouponSaveLink}" />
                <br />
                <br />
                <h:commandLink action="#{couponController.prepareList}" value="#{bundle.CreateCouponShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.CreateCouponIndexLink}"/>
            </h:form>
        </ui:define>
    </ui:composition>

</html>
