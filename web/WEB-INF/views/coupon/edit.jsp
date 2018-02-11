<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.EditCouponTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputLabel value="#{bundle.EditCouponLabel_couponId}" for="couponId" />
                    <h:inputText id="couponId" value="#{couponController.selected.couponId}" title="#{bundle.EditCouponTitle_couponId}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_couponId}"/>
                    <h:outputLabel value="#{bundle.EditCouponLabel_couponValue}" for="couponValue" />
                    <h:inputText id="couponValue" value="#{couponController.selected.couponValue}" title="#{bundle.EditCouponTitle_couponValue}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_couponValue}"/>
                    <h:outputLabel value="#{bundle.EditCouponLabel_couponCreationDate}" for="couponCreationDate" />
                    <h:inputText id="couponCreationDate" value="#{couponController.selected.couponCreationDate}" title="#{bundle.EditCouponTitle_couponCreationDate}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_couponCreationDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.EditCouponLabel_couponExpiryDate}" for="couponExpiryDate" />
                    <h:inputText id="couponExpiryDate" value="#{couponController.selected.couponExpiryDate}" title="#{bundle.EditCouponTitle_couponExpiryDate}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_couponExpiryDate}">
                        <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
                    </h:inputText>
                    <h:outputLabel value="#{bundle.EditCouponLabel_couponDescription}" for="couponDescription" />
                    <h:inputTextarea rows="4" cols="30" id="couponDescription" value="#{couponController.selected.couponDescription}" title="#{bundle.EditCouponTitle_couponDescription}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_couponDescription}"/>
                    <h:outputLabel value="#{bundle.EditCouponLabel_adminId}" for="adminId" />
                    <h:selectOneMenu id="adminId" value="#{couponController.selected.adminId}" title="#{bundle.EditCouponTitle_adminId}" required="true" requiredMessage="#{bundle.EditCouponRequiredMessage_adminId}">
                        <f:selectItems value="#{administratorController.itemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                </h:panelGrid>
                <h:commandLink action="#{couponController.update}" value="#{bundle.EditCouponSaveLink}"/>
                <br />
                <br />
                <h:link outcome="View" value="#{bundle.EditCouponViewLink}"/>
                <br />
                <h:commandLink action="#{couponController.prepareList}" value="#{bundle.EditCouponShowAllLink}" immediate="true"/>
                <br />
                <br />
                <h:link outcome="/index" value="#{bundle.EditCouponIndexLink}" />
            </h:form>
        </ui:define>
    </ui:composition>

</html>
