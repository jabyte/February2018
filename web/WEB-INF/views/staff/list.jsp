<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:ui="http://xmlns.jcp.org/jsf/facelets"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">

    <ui:composition template="/template.xhtml">
        <ui:define name="title">
            <h:outputText value="#{bundle.ListStaffTitle}"></h:outputText>
        </ui:define>
        <ui:define name="body">
			<h:form styleClass="jsfcrud_list_form">
				<h:panelGroup id="messagePanel" layout="block">
					<h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
				</h:panelGroup>
				<h:outputText escape="false" value="#{bundle.ListStaffEmpty}" rendered="#{staffController.items.rowCount == 0}"/>
				<h:panelGroup rendered="#{staffController.items.rowCount > 0}">
					<h:outputText value="#{staffController.pagination.pageFirstItem + 1}..#{staffController.pagination.pageLastItem + 1}/#{staffController.pagination.itemsCount}"/>&nbsp;
					<h:commandLink action="#{staffController.previous}" value="#{bundle.Previous} #{staffController.pagination.pageSize}" rendered="#{staffController.pagination.hasPreviousPage}"/>&nbsp;
					<h:commandLink action="#{staffController.next}" value="#{bundle.Next} #{staffController.pagination.pageSize}" rendered="#{staffController.pagination.hasNextPage}"/>&nbsp;
					<h:dataTable value="#{staffController.items}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_staffId}"/>
							</f:facet>
							<h:outputText value="#{item.staffId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_phoneNumber}"/>
							</f:facet>
							<h:outputText value="#{item.phoneNumber}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_firstName}"/>
							</f:facet>
							<h:outputText value="#{item.firstName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_lastName}"/>
							</f:facet>
							<h:outputText value="#{item.lastName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_middleName}"/>
							</f:facet>
							<h:outputText value="#{item.middleName}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="#{bundle.ListStaffTitle_adminId}"/>
							</f:facet>
							<h:outputText value="#{item.adminId}"/>
						</h:column>
						<h:column>
							<f:facet name="header">
								<h:outputText value="&nbsp;"/>
							</f:facet>
							<h:commandLink action="#{staffController.prepareView}" value="#{bundle.ListStaffViewLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{staffController.prepareEdit}" value="#{bundle.ListStaffEditLink}"/>
							<h:outputText value=" "/>
							<h:commandLink action="#{staffController.destroy}" value="#{bundle.ListStaffDestroyLink}"/>
						</h:column>
					</h:dataTable>
				</h:panelGroup>
				<br />
				<h:commandLink action="#{staffController.prepareCreate}" value="#{bundle.ListStaffCreateLink}"/>
				<br />
				<br />
				<h:link outcome="/index" value="#{bundle.ListStaffIndexLink}"/>
			</h:form>
        </ui:define>
    </ui:composition>

</html>
