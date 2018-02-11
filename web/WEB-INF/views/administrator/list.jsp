<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListAdministratorTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListAdministratorEmpty}" rendered="#{administratorController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{administratorController.items.rowCount > 0}">
					<h:outputText value="#{administratorController.pagination.pageFirstItem + 1}..#{administratorController.pagination.pageLastItem + 1}/#{administratorController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{administratorController.previous}" value="#{bundle.Previous} #{administratorController.pagination.pageSize}" rendered="#{administratorController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{administratorController.next}" value="#{bundle.Next} #{administratorController.pagination.pageSize}" rendered="#{administratorController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{administratorController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_adminId}"/>
							</f:facet>
							<h:outputText value="#{item.adminId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_phoneNumber}"/>
							</f:facet>
							<h:outputText value="#{item.phoneNumber}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_firstName}"/>
							</f:facet>
							<h:outputText value="#{item.firstName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_lastName}"/>
							</f:facet>
							<h:outputText value="#{item.lastName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_middleName}"/>
							</f:facet>
							<h:outputText value="#{item.middleName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListAdministratorTitle_adminEmail}"/>
							</f:facet>
							<h:outputText value="#{item.adminEmail}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{administratorController.prepareView}" value="#{bundle.ListAdministratorViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{administratorController.prepareEdit}" value="#{bundle.ListAdministratorEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{administratorController.destroy}" value="#{bundle.ListAdministratorDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{administratorController.prepareCreate}" value="#{bundle.ListAdministratorCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListAdministratorIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
