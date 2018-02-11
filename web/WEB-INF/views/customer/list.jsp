<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListCustomerTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListCustomerEmpty}" rendered="#{customerController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{customerController.items.rowCount > 0}">
					<h:outputText value="#{customerController.pagination.pageFirstItem + 1}..#{customerController.pagination.pageLastItem + 1}/#{customerController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{customerController.previous}" value="#{bundle.Previous} #{customerController.pagination.pageSize}" rendered="#{customerController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{customerController.next}" value="#{bundle.Next} #{customerController.pagination.pageSize}" rendered="#{customerController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{customerController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCustomerTitle_customerId}"/>
							</f:facet>
							<h:outputText value="#{item.customerId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCustomerTitle_phoneNumber}"/>
							</f:facet>
							<h:outputText value="#{item.phoneNumber}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCustomerTitle_firstName}"/>
							</f:facet>
							<h:outputText value="#{item.firstName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCustomerTitle_lastName}"/>
							</f:facet>
							<h:outputText value="#{item.lastName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListCustomerTitle_middleName}"/>
							</f:facet>
							<h:outputText value="#{item.middleName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{customerController.prepareView}" value="#{bundle.ListCustomerViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{customerController.prepareEdit}" value="#{bundle.ListCustomerEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{customerController.destroy}" value="#{bundle.ListCustomerDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{customerController.prepareCreate}" value="#{bundle.ListCustomerCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListCustomerIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
