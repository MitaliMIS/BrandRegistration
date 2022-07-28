
<ui:composition xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html"
	xmlns:a4j="http://richfaces.org/a4j"
	xmlns:rich="http://richfaces.org/rich"
	xmlns:c="http://java.sun.com/jsp/jstl/core"
	xmlns:t="http://myfaces.apache.org/tomahawk">

	<style>
.panel-shadow {
	box-shadow: 0 8px 10px 1px rgba(0, 0, 0, .14), 0 3px 14px 2px
		rgba(0, 0, 0, .12), 0 5px 5px -3px rgba(0, 0, 0, .2);
}
</style>



	<h:form rendered="#{applicationForBrandLabelApproval_22_23Action.valid_user}"
		enctype="multipart/form-data;charset=UTF-8;">
		<f:view>
			<div class="row">
				<rich:spacer height="30px;"></rich:spacer>
			</div>


			<div class="row " align="center">
				<div align="center">
					<div class="col-md-2" align="right"></div>
					<div class="col-md-8" align="center">
						<b> <h:outputText value="Application For Label Approval 2022-23"
								style="FONT-SIZE: xx-large; FONT-FAMILY: 'Agency FB'; COLOR: #182528; TEXT-DECORATION: underline;" /></b>
					</div>



				</div>

			</div>
			<h5>
				<rich:separator lineType="dashed" />
			</h5>

			<div>
				<a4j:outputPanel id="msg">
					<div class="col-md-12 wow shake" align="center">
						<h:messages errorStyle="color:red" layout="table" id="messages"
							infoStyle="color:green" style="font-weight: bold">
						</h:messages>

					</div>
				</a4j:outputPanel>
			</div>


			<div class="row">
				<div class="col-md-1"></div>
				<div class=" panel panel-shadow col-md-10">

					<div class="row">
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="uname" value="Unit Name" />
								<h:inputText class="form-control" id="uname" readonly="true"
									value="#{applicationForBrandLabelApproval_22_23Action.userName}" />
							</div>
						</div>
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="uadr" value="Address" />
								<h:inputText class="form-control" id="uadr" readonly="true"
									value="#{applicationForBrandLabelApproval_22_23Action.userAddress}" />
							</div>
						</div>
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="utype" value="Unit Type" />
								<h:inputText class="form-control" id="utype" readonly="true"
									value="#{applicationForBrandLabelApproval_22_23Action.unitType}" />
							</div>
						</div>

						<rich:spacer height="10px;"></rich:spacer>


					</div>

					<div class="row">
					<h:panelGroup rendered="false">
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="cat" value="Liqour Category" />
								<br />
								<h:selectOneMenu style="width:100%;" styleClass="dropdown-menu"
									id="cat" value="#{applicationForBrandLabelApproval_22_23Action.shopType}"
									onchange="this.form.submit()"
									valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.shopTypeFilter}">
									<f:selectItems
										value="#{applicationForBrandLabelApproval_22_23Action.shopTypeList}" />
									<a4j:support event="onchange" ajaxSingle="true"
										reRender="domain,lictype,table1" />
								</h:selectOneMenu>
							</div>
						</div>
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="lictype" value="License Type" />
								<br />
								<h:selectOneMenu style="width:100%;" styleClass="dropdown-menu"
									id="lictype"
									value="#{applicationForBrandLabelApproval_22_23Action.licType}"
									valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.licTypeFilter}">
									<f:selectItems
										value="#{applicationForBrandLabelApproval_22_23Action.licTypeList}" />
									<a4j:support event="onchange" ajaxSingle="true"
										reRender="table1,domain" />
								</h:selectOneMenu>
							</div>
						</div>
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="domain" value="Domain " />
								<br />
								<h:selectOneMenu style="width:100%;" styleClass="dropdown-menu"
									id="domain" value="#{applicationForBrandLabelApproval_22_23Action.domain}"
									onchange="this.form.submit()"
									valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.domainFilter}">
									<f:selectItems
										value="#{applicationForBrandLabelApproval_22_23Action.domainList}" />
									<a4j:support event="onchange" ajaxSingle="true"
										reRender="table1,state,label" />
								</h:selectOneMenu>
							</div>
						</div>

						<rich:spacer height="20px;"></rich:spacer>
						
						<div class="row">
						<div class="col-md-4">
							<div align="center">
								<h:outputLabel for="cat" value="For Civil/CSD" />
								<br />
								<h:selectOneMenu style="width:100%;" styleClass="dropdown-menu"
									  value="#{applicationForBrandLabelApproval_22_23Action.civil_csd}"
									onchange="this.form.submit()"
									valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.changecivil_csdList}">
									<f:selectItem itemLabel="----Select----" itemValue="NA" />
									<f:selectItem itemLabel="Civil" itemValue="Civil" />
									<f:selectItem itemLabel="CSD" itemValue="CSD" />
									 
								</h:selectOneMenu>
							</div>
							</div>
							</div>
							<rich:spacer height="20px;"></rich:spacer>

						
<div class="col-md-12" align="center">
							<h:selectOneRadio  
								value="#{applicationForBrandLabelApproval_22_23Action.brandtype}" valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.brandtype}" onchange="this.form.submit();">
								<f:selectItem itemValue="N" itemLabel="New Brand Registeration and New Package Size" />
								<f:selectItem itemValue="O" itemLabel="Brand already Registered 2022-23 Add New Package" />
								<f:selectItem itemValue="OLC" itemLabel="Brand already Registered 2022-23 Package Label Change" />
								 </h:selectOneRadio>
						</div>
						
						</h:panelGroup>
						<div class="row" style="margin-top: 5px;" align="center">
							<h:outputLabel for="table1" value="Label Details" />
							<br />
<div style="overflow-y: scroll; height: 300px">
							<rich:dataTable align="center" id="table1"  width="100%"
								var="list"
								value="#{applicationForBrandLabelApproval_22_23Action.labelDetailList}"
								headerClass="TableHead" footerClass="TableHead"
								rowClasses="TableRow1,TableRow2">

								<rich:column>
									<f:facet name="header">
										<h:outputText value="* Sr.No. "
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									<h:outputText   value="#{list.sno}"  />
									<f:facet name="footer">
										
									</f:facet>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="*Appilcation Type"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									 <h:outputText   value="#{list.app_type_show}"   />
									 
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="*Liqour Category"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									 <h:outputText   value="#{list.shopType}"   />
									 
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="* License Type"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									 <h:outputText   value="#{list.lic___Type}"   />
									 
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="* Brand Name"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									 <h:outputText   value="#{list.brand_name_show}"   />
									 
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>
								<rich:column>
									<f:facet name="header">
										<h:outputText value="* Package"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									 
									 <h:outputText   value="#{list.packageName_show}"   /> 
									 
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>

								<rich:column>
									<f:facet name="header">
										<h:outputText value="*Civil/CSD"
											styleClass="generalHeaderOutputTable" />  
									</f:facet>
									 
									 <h:outputText   value="#{list.for_csd_civil_show}"   />
									<f:facet name="footer">
										<h:outputText value="" styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>
								<rich:column   >
									<f:facet name="header">
										 	<h:outputText value="*Domain (Sale In)"
											styleClass="generalHeaderOutputTable" /> 
									</f:facet>
									  <h:outputText   value="#{list.domain_name_show}"   />
									<f:facet name="footer">
										<h:outputText value="Total"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>



								

								<rich:column>
									<f:facet name="header">
										<h:outputText value="* Number of labels "
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									<h:selectOneMenu styleClass="dropdown-menu" id="menu6"
										value="#{list.numOfLabels}"
										valueChangeListener="#{applicationForBrandLabelApproval_22_23Action.numOfLabels}">
										<f:selectItems value="#{list.numOfLabelsList}" />
										<a4j:support event="onchange" ajaxSingle="true"
											reRender=" totalnum" />
									</h:selectOneMenu>
									<f:facet name="footer">
										<h:outputText id="totalnum"
											value="#{applicationForBrandLabelApproval_22_23Action.total_no}"
											styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>
								
								<rich:column>
									<f:facet name="header">
										<h:outputText value="* Remark "
											styleClass="generalHeaderOutputTable" />
									</f:facet>
									<h:outputText   value="#{list.package_remak}"   />
									<f:facet name="footer">
										<h:outputText value=""
											styleClass="generalHeaderOutputTable" />
									</f:facet>
								</rich:column>

								 <rich:column align="center" >
						<f:facet name="header">
							<h:outputText value="" styleClass="generalHeaderOutputTable"
								style="FONT-WEIGHT: bold;"></h:outputText>
						</f:facet>
						<h:selectBooleanCheckbox value="#{list.checkbox}" />
						<f:facet name="footer">
										<h:outputText value=""
											styleClass="generalHeaderOutputTable" />
									</f:facet>
					</rich:column>

								

							</rich:dataTable>
							</div>

						</div>

					</div>
					<div class="row">
						<rich:spacer height="30px;"></rich:spacer>
					</div>
					<div class="row" align="center">
						<div align="center">
							<h:commandButton styleClass="btn btn-primary"
								action="#{applicationForBrandLabelApproval_22_23Action.saveMethod}"
								value="Save" />
							<rich:spacer width="10px" />
							<h:commandButton
								action="#{applicationForBrandLabelApproval_22_23Action.resetMethod}"
								value="Reset" class="btn btn-default" />

						 
						</div>
					</div>
					<div class="row">
						<rich:spacer height="30px;"></rich:spacer>
					</div>
				</div>


			</div>



			<div class="row">
				<div align="center">
					<h:commandButton styleClass="btn btn-danger"
						action="#{applicationForBrandLabelApproval_22_23Action.bck}"
						value="Back To Dashboard" />

				</div>
			</div>






		</f:view>
	</h:form>
</ui:composition>
